section .data
; DB - Define Byte 		-> 1 byts
; DW - Define Word 		-> 2 byts
; DQ - Define Quar Word 	-> 4 byts
; DD - Define Doube Word	-> 4 byts
; DT - Define ten Word		-> 10 byts

; Aqui são os numeros 

x DD 50
y DD 10

; Aqui são os textos

smaller DB 	"X is less than Y",0xa
width1 	EQU 	$ - smaller

bigger 	DB 	"x is greater than y",0xa
width2 	EQU 	$ - bigger

section .text

global _start

_start:

MOV EAX, DWORD [x]
MOV EBX, DWORD [y]

CMP EAX, EBX
JLE less
MOV ECX, bigger
MOV EDX, width2
JMP final

less:
MOV EDX, width1
MOV EDX, smaller
final:

MOV EBX,1
MOV EAX, 4
INT 0x80

MOV EAX,1
INT 0x80 
