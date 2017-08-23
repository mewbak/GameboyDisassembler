import {isJumpInstruction, isCallInstruction, isRetInstruction} from '../disassemblerInstructions';
import {calculateJumpLocation, DisassembleBytes, convertToHex} from '../disassemblerMain';

export function parseJumpInstruction (instruction, state) {
  if (!isJumpInstruction(instruction)) return state;
  const jumpDestination = calculateJumpLocation(instruction, state);
  state.jumpAddresses.push(jumpDestination);
  state.jumpAssemblyInstructions[state.pc] = DisassembleBytes(instruction);
  state.pc = jumpDestination;
  return state;
}

export function parseCallInstruction (instruction, state) {
  if (!isCallInstruction(instruction)) return state;
  const jumpDestination = calculateJumpLocation(instruction, state);
  state.jumpAddresses.push(jumpDestination);
  state.jumpAssemblyInstructions[state.pc] = DisassembleBytes(instruction);
  state.callStack.push(state.pc);
  state.pc = jumpDestination;
  return state;
}

export function parseRetInstruction (instruction, state) {
  if (!isRetInstruction(instruction)) return state;
  const jumpDestination = state.callStack.pop();
  state.jumpAssemblyInstructions[state.pc] = DisassembleBytes(instruction);
  state.pc = jumpDestination;
  return state;
}

/**
 *
 *
 * @param {any} instruction
 * @param {any} state
 * @returns
 */
export function parseInstruction (instruction, state) {
  if (instruction.length > 3) {
    console.info('instruction.length:', instruction.length, instruction);
  }
  const instructionPCAddress = convertToHex(state.pc - 1);
  state.allAssemblyInstructions[instructionPCAddress] = DisassembleBytes(instruction);
  // now calculate jumps etc
  state.pc += instruction.length;
  state = parseJumpInstruction(instruction, state);
  state = parseCallInstruction(instruction, state);
  return state;
}