bits 32

section .multiboot 		;multiboot section
	dd 0x1BADB002		;magic number
	dd 0x0			;flag
	dd - (0x1BADB002 + 0x0)	;set checksum

section .text
global start
extern main			;C file

start:
	cli			;block inerrupts
	mov esp, stack_space	;set stack pointer
	call main		;obvious
	hlt			;halt the CPU

section .bss
resb 8192			;8KB for stack
stack_space:
