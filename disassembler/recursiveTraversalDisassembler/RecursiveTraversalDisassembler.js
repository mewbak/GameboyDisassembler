import {parseInstruction} from './instructionParsing/instructionParsing';
import {reduceBytesToDisassembleIntoInstructionGroupData, reduceBytesIntoInstructions} from '../linearSweepDisassembler/LinearSweepDisassembler';
import {reduce, map} from 'lodash';
import {formatIntoGBDisBinaryFormat} from '../assemblyFormatters/gb-disasmFormatter';
import {convertTo8CharacterHexAddress} from '../Util/ValueConversion';
import {logAction} from '../Util/Logger';
import {printRomHeaderInformation, parseGBHeader, getRomTitle} from '../romInformation/romInformation';
import {parseSymFiles} from '../Util/ParseSymFile';

/**
 * Disassemble Bytes by executing all jumps, ignoring data, if you don't have data bytes use DisassembleBytesWithRecursiveTraversal
 *
 * @export
 * @param {any} bytesToDisassemble
 * @returns
 */
export function DisassembleBytesWithRecursiveTraversal (bytesToDisassemble, startAddress = 0x100, allowLogging = false) {
  const groupsOfInstructions = reduceBytesToDisassembleIntoInstructionGroupData(bytesToDisassemble);
  return disassembleLoop(startAddress, groupsOfInstructions, bytesToDisassemble, [], allowLogging);
}

export function DisassembleBytesWithRecursiveTraversalIntoOptimizedArray (bytesToDisassemble, startAddress = 0x100, allowLogging = false, symbols={}) {
  const groupsOfInstructions = reduceBytesToDisassembleIntoInstructionGroupData(bytesToDisassemble);
  const resultingInstructionMap = disassembleLoop(startAddress, groupsOfInstructions,bytesToDisassemble, [], allowLogging, symbols).allAssemblyInstructions;
  const arrayOfJustInstructions = map(resultingInstructionMap, (value, key) => [value, key.replace('$', '')]);
  const sortedArrayByAddress = arrayOfJustInstructions.sort((a, b) => parseInt(a[1], 16) - parseInt(b[1], 16));
  return reduceInstructionCount(sortedArrayByAddress);
}

export function DisassembleBytesWithRecursiveTraversalFormatted (bytesToDisassemble, startAddress = 0x100, allowLogging = false, symbols={}) {
  const groupsOfInstructions = reduceBytesToDisassembleIntoInstructionGroupData(bytesToDisassemble);
  const resultingInstructionMap = disassembleLoop(startAddress, groupsOfInstructions, bytesToDisassemble, [], allowLogging, symbols);
  const formattedMapOfInstructions = formatIntoGBDisBinaryFormat(resultingInstructionMap.allAssemblyInstructions, groupsOfInstructions);
  return formattedMapOfInstructions;
}

export function DisassembleBytesWithRecursiveTraversalFormattedWithHeader (bytesToDisassemble, startAddress = 0x100, allowLogging = false, symbols={}) {
  const romHeaderInformation = printRomHeaderInformation(bytesToDisassemble);
  const formattedMapOfInstructions = DisassembleBytesWithRecursiveTraversalFormatted (bytesToDisassemble, startAddress, allowLogging, symbols)
  const assemblyWithNewlines = formattedMapOfInstructions.join('\n');
  return romHeaderInformation+assemblyWithNewlines+'\n';
}

let visitedLocations = {};

export function hasAlreadyVisited (state) {
  if (visitedLocations[state.pc]) {
    return true;
  }

  return false;
}

export function markAddressAsVisited (state) {
  visitedLocations[state.pc] = state;
}

function resetVisitedAddresses () {
  visitedLocations = {};
  return visitedLocations;
}

export function handleSymFile(symFile) {
  if (symFile)
  return parseSymFiles('',{},symFile);
  return new Promise();
}

function findNewUnexploredPath(state, instruction) {
  const previousPC = state.pc;
  state.pc = state.additionalPaths.pop();
  logAction('Going To additional path from:' + convertTo8CharacterHexAddress(previousPC) + ' To:' + convertTo8CharacterHexAddress(state.pc), state);
  return state;
}

function recalculateGroupOfInstructionsFor(addressOfOpcode, bytesToDisassemble, groupsOfInstructions, state) {
  // 
  // This is due to oversimplification of the groupsOfInstructions, I presumed that looping over each byte and checking the size of the
  // instruction was enough, but the problem is data is inbetween code blocks so it causes it to get out of alignment
  // So this function calculates the instructions that were not part of the initial linear sweep pass.
  // 
  reduceBytesIntoInstructions(groupsOfInstructions, bytesToDisassemble[addressOfOpcode], addressOfOpcode, bytesToDisassemble);
  state.additionalPaths.push(addressOfOpcode);
}

function handleInvalidNextState(state, instruction, bytesToDisassemble, groupsOfInstructions) {

  if (!instruction) {
    if (state.pc >= bytesToDisassemble.length) return;
    logAction('<-- Instruction invalid: '+instruction+' '+state.pc+' '+convertTo8CharacterHexAddress(state.pc),state);
    recalculateGroupOfInstructionsFor(state.pc, bytesToDisassemble, groupsOfInstructions, state);
    return;
  }
  if (hasAlreadyVisited(state))
  {  
    logAction('<-- hasAlreadyVisited',state); 
  }

}

function disassembleLoop (startAddress, groupsOfInstructions, bytesToDisassemble, addressesToJumpTo, allowLogging = false, symbols={}) {
  resetVisitedAddresses();
  addressesToJumpTo.push(startAddress);
  let state = {pc: startAddress, jumpAddresses: [startAddress], jumpAssemblyInstructions: {}, allAssemblyInstructions: {}, callStack: [], additionalPaths: [], allowLogging: allowLogging, 
  symbols: symbols};
  let currentLoop = 0;
  while (true) {
    const instruction = groupsOfInstructions.instructions[state.pc];
    if (!instruction || hasAlreadyVisited(state)) {
      handleInvalidNextState(state,instruction, bytesToDisassemble, groupsOfInstructions);
      if (state.additionalPaths.length === 0) break;
      state = findNewUnexploredPath(state, instruction);
      continue;
    }
    markAddressAsVisited(state);
    state = parseInstruction(instruction, state);
    currentLoop++;
  }
  return state;
}

/**
 * Find all Jump instructions in a rom
 * @export
 * @param {any} bytesToDisassemble
 * @param {any} startAddress
 * @returns
 */
export function findAllJumpInstructions (bytesToDisassemble, startAddress = 0x100) {
  const groupsOfInstructions = reduceBytesToDisassembleIntoInstructionGroupData(bytesToDisassemble);
  return disassembleLoop(startAddress, groupsOfInstructions, bytesToDisassemble, []).jumpAssemblyInstructions;
}

function reduceIdenticalInstructionsIntoOne (newInstructionList, value, index, collection) {
  const stringOfInstructionOpcode = value[0][0];
  const previousInstruction = collection[index - 1];
  if (index === 0 || stringOfInstructionOpcode !== previousInstruction[0][0]) {
    value.push(1);
    newInstructionList.push(value);
    return newInstructionList;
  }
  const previousElement = newInstructionList.pop();
  previousElement[previousElement.length - 1] += 1;
  newInstructionList.push(previousElement);
  return newInstructionList;
}

export function reduceInstructionCount (originalInstructionList) {
  const modifiedInstructionList = reduce(originalInstructionList, reduceIdenticalInstructionsIntoOne, []);
  return modifiedInstructionList;
}
