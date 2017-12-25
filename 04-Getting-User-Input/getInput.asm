section .data
	texto1 DB "Qual é o seu nome? "
	texto2 DB "Olá, "
section .bss
	name resb 16
section .text
	global _start
_start:
	call _printTexto1
	call _getName
	call _printTexto2
	call _printName

	MOV rax, 60
	MOV rdi, 0
	syscall
_printTexto1:
	MOV rax, 1
	MOV rdi, 1
	MOV rsi, texto1
	MOV rdx, 20
	syscall
	ret
_printTexto2:
	MOV rax, 1
	MOV rdi, 1
	MOV rsi, texto2
	MOV rdx, 6
	syscall
	ret
_getName:
	MOV rax, 0
	MOV rdi, 0
	MOV rsi, name
	MOV rdx, 20
	syscall
	ret
_printName:
	MOV rax, 1
	MOV rdi, 1
	MOV rsi, name
	MOV rdx, 20
	syscall
	ret
