section .data
	text DB "Hello World!", 10

; text -> Este é um nome atribuído ao endereço em memória em que esses dados estão localizados. 
; Quando usamos "texto" mais tarde no código, quando o código for compilado, 
; o compilador determinará a localização real em memória desses dados e substituirá todas as fufuras instâncias de 
; "texto" com esse endereço de memória 
; DB -> Isso significa essencialmente que vamos definir alguns bytes de linha de dados para inserir em nosso código.
; "Hello World!" -> Este é o bytes de dados que estamos definindo, Cada letra na seqüência de texto é um bytes solteiro.
; 10 -> È um caractere de nova linha, que muitas vezes usamos como "\n"

; 	Registers
; Os registradores são parte do processador que armazena memória temporariamente.
; Na arquitetura x86_64, o registro tem 64 bits
; isso significa que cada registro tem os valores:
;  Não assinado: 0 = 18,446,744,073,709,551,616
;  Assinado: -9,223,372,036,854,775,808 = 9,223,372,036,854,775,808

section .text
	global _start
_start:
	MOV RAX, 1
	MOV RDI, 1
	MOV RSI, text
	MOV RDX, 14
	syscall

	MOV RAX, 60
	MOV RDI, 0
	syscall
