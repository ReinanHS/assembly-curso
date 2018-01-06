section .data
	digit 	DW 	0,10

	text 	DB 	"Escreva o número 1:"
	length  EQU	$ - text

	text2 	DB	"Escreva o número 2:"
	length2 EQU	$ - text2

	valor 	DB	"A soma entre o número 1 e o número 2 é:"
	length3 EQU	$ - valor
section .bss
	num1	RESB 16
	num2	RESB 16 
section .text
	global _start
_start:

CALL PrintText
CALL getNum1

CALL PrintText2
CALL getNum2

CALL PrintValor


;MOV RAX, 10
;MOV RBX, 2
;DIV RBX

;MOV RAX, 4
;ADD RAX, 4
MOV RAX, num1
ADD RAX, 4
CALL PrintDigit

CALL _exit

PrintDigit:

ADD RAX, 48
MOV [digit], AL
MOV RAX, 1
MOV RDI, 1
MOV RSI, digit
MOV RDX, 2
syscall
ret

PrintText:

MOV RAX, 1
MOV RDI, 1
MOV RSI, text
MOV RDX, length
syscall
ret

getNum1:

MOV RAX, 0
MOV RDI, 0
MOV RSI, num1
MOV RDX, 16
syscall
ret

PrintText2:

MOV RAX, 1
MOV RDI, 1
MOV RSI, text2
MOV RDX, length2
syscall
ret

getNum2:

MOV RAX, 0
MOV RDI, 0
MOV RSI, num2
MOV RDX, 16
syscall
ret

PrintValor:

MOV RAX, 1
MOV RDI, 1
MOV RSI, valor
MOV RDX, length3
syscall
ret

_exit:

MOV RDI, 0
MOV RAX, 60
syscall

