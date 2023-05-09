; ----------------------------------------------------------
; Universidad del Valle de Guatemala
; Laboratorio 8
; Organizador de Computadoras y Assembler
; Trabajo realizado por Héctor Penedo y Ricardo Chuy
; 
; Título: Calculador de IVA
; 
; Descripción: El programa debe calcular el total que facturó
; una empresa en un año para determinar si debe cambiar o 
; mantenerse en el régimen de pequeño contribuyente
; ----------------------------------------------------------

.386

.model flat, stdcall, c

.stack 4096

; ExitProcess proto, dwExitCode:dword

.data
	jun_2022 DD 16106
	jul_2022 DD 9278
	aug_2022 DD 17600
	sep_2022 DD 6160
	oct_2022 DD 11113
	nov_2022 DD 13386
	dec_2022 DD 14323
	jan_2023 DD 5177
	feb_2023 DD 6022
	mar_2023 DD 12783
	apr_2023 DD 13043
	may_2023 DD 150000
	iva DW 20
	ivaResult DD 0
	total DD 0
	maximo DD 0

	msgFacturacion db "Junio 2022 facturado: %i IVA: %i  ",0Ah,0
	msgFacturacion2 db "Julio 2022 facturado: %i IVA: %i  ",0Ah,0
	msgFacturacion3 db "Agosto 2022 facturado: %i IVA: %i  ",0Ah,0
	msgFacturacion4 db "Septiembre 2022 facturado: %i IVA: %i  ",0Ah,0
	msgFacturacion5 db "Octubre 2022 facturado: %i IVA: %i  ",0Ah,0
	msgFacturacion6 db "Noviembre 2022 facturado: %i IVA: %i  ",0Ah,0
	msgFacturacion7 db "Diciembre 2022 facturado: %i IVA: %i  ",0Ah,0
	msgFacturacion8 db "Enero 2023 facturado: %i IVA: %i  ",0Ah,0
	msgFacturacion9 db "Febrero 2023 facturado: %i IVA: %i  ",0Ah,0
	msgFacturacion10 db "Marzo 2023 facturado: %i IVA: %i  ",0Ah,0
	msgFacturacion11 db "Abril 2023 facturado: %i IVA: %i  ",0Ah,0
	msgFacturacion12 db "Mayo 2023 facturado: %i IVA: %i  ",0Ah,0

	msgIvaGen db "Total excede a Q%i. Cambiar a IVA general."
	msgIvaSmol db "Total es menor a Q%i. Mantenerse pequeño contribuyente."
.code
	includelib libucrt.lib
	includelib legacy_stdio_definitions.lib
	includelib libcmt.lib
	includelib libvcruntime.lib

	extrn printf:near
	extrn exit:near

public main
main proc

; Junio
	mov EAX, 0
	mov EBX, 0
	mov EAX, jun_2022

	mov dx, 0
	div iva

	mov ivaResult, EAX

	push dword PTR [ivaResult]
	push dword PTR [jun_2022]
	push offset msgFacturacion
	call printf
	push 0

; Julio
	mov EAX, 0
	mov EAX, jul_2022

	mov dx, 0
	div iva

	add total, EAX
	mov ivaResult, EAX

	push dword PTR [ivaResult]
	push dword PTR [jul_2022]
	push offset msgFacturacion2
	call printf
	push 0

; Agosto
	mov EAX, 0
	mov EAX, aug_2022

	mov dx, 0
	div iva

	add total, EAX
	mov ivaResult, EAX

	push dword PTR [ivaResult]
	push dword PTR [aug_2022]
	push offset msgFacturacion3
	call printf
	push 0

; Septiembre

	mov EAX, 0
	mov EAX, sep_2022

	mov dx, 0
	div iva

	add total, EAX
	mov ivaResult, EAX

	push dword PTR [ivaResult]
	push dword PTR [sep_2022]
	push offset msgFacturacion4
	call printf
	push 0

; Octubre

	mov EAX, 0
	mov EAX, oct_2022

	mov dx, 0
	div iva

	add total, EAX
	mov ivaResult, EAX

	push dword PTR [ivaResult]
	push dword PTR [oct_2022]
	push offset msgFacturacion5
	call printf
	push 0

; Noviembre

	mov EAX, 0
	mov EAX, nov_2022

	mov dx, 0
	div iva

	add total, EAX
	mov ivaResult, EAX

	push dword PTR [ivaResult]
	push dword PTR [nov_2022]
	push offset msgFacturacion6
	call printf
	push 0

; Diciembre

	mov EAX, 0
	mov EAX, dec_2022

	mov dx, 0
	div iva

	add total, EAX
	mov ivaResult, EAX

	push dword PTR [ivaResult]
	push dword PTR [dec_2022]
	push offset msgFacturacion7
	call printf
	push 0

; Enero

	mov EAX, 0
	mov EAX, jan_2023

	mov dx, 0
	div iva

	add total, EAX
	mov ivaResult, EAX

	push dword PTR [ivaResult]
	push dword PTR [jan_2023]
	push offset msgFacturacion8
	call printf
	push 0

; Febrero

	mov EAX, 0
	mov EAX, feb_2023

	mov dx, 0
	div iva

	add total, EAX
	mov ivaResult, EAX

	push dword PTR [ivaResult]
	push dword PTR [feb_2023]
	push offset msgFacturacion9
	call printf
	push 0

; Marzo

	mov EAX, 0
	mov EAX, mar_2023

	mov dx, 0
	div iva

	add total, EAX
	mov ivaResult, EAX

	push dword PTR [ivaResult]
	push dword PTR [mar_2023]
	push offset msgFacturacion10
	call printf
	push 0

; Abril

	mov EAX, 0
	mov EAX, apr_2023

	mov dx, 0
	div iva

	add total, EAX
	mov ivaResult, EAX

	push dword PTR [ivaResult]
	push dword PTR [apr_2023]
	push offset msgFacturacion11
	call printf
	push 0

; Mayo

	mov EAX, 0
	mov EAX, may_2023

	mov dx, 0
	div iva

	add total, EAX
	mov ivaResult, EAX

	push dword PTR [ivaResult]
	push dword PTR [may_2023]
	push offset msgFacturacion12
	call printf
	push 0

; Total
	add EBX, jun_2022
	add EBX, jul_2022
	add EBX, aug_2022
	add EBX, sep_2022
	add EBX, oct_2022
	add EBX, nov_2022
	add EBX, dec_2022
	add EBX, jan_2023
	add EBX, feb_2023
	add EBX, mar_2023
	add EBX, apr_2023
	add EBX, may_2023

	mov ECX, 150000

	mov maximo, 150000

	cmp EBX, ECX
	JA general
	JBE small

; IVA General

general:
	push dword PTR [maximo]
	push offset msgIvaGen
	call printf
	push 0
	JMP salir

; Pequeño Contribuyente

small:
	push dword PTR [maximo]
	push offset msgIvaSmol
	call printf
	push 0

; Terminar el programa

salir:
	push 0
	call exit

main endp
end