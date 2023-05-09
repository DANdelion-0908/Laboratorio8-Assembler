; ----------------------------------------------------------
; Universidad del Valle de Guatemala
; Plantilla
; ----------------------------------------------------------

.386

.model flat, stdcall, c

.stack 4096

; ExitProcess proto, dwExitCode:dword

.data

.code
includelib libucrt.lib
includelib legacy_stdio_definitions.lib
includelib libcmt.lib
includelib libvcruntime.lib

extrn printf:near
extrn exit:near

public main
main proc

call exit

main endp
end