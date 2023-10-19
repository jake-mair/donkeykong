TITLE game
; Jake Mair & Dom Mauretti


INCLUDE CS240.inc 

DOSEXIT = 4C00h
DOS = 21h

.8086
.data

gameLayout LABEL BYTE
BYTE "+------------------------------------------------------------------------------+"
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "|                                                                              |" 
BYTE "+------------------------------------------------------------------------------+"
BYTE "                                                                                " 
BYTE 0

xPos BYTE 20
yPos BYTE 20

.code

DrawPlayer PROC

    push ax 
    push dx 

    mov al, xPos
    mov ah, yPos

    mov dl, 'X'
    call WriteChar 

    pop dx 
    pop ax

    ret
DrawPlayer ENDP 



main PROC 
    mov ax, @data 
    mov ds, ax 


    mov ax, DOSEXIT
    int DOS

main ENDP 
END main