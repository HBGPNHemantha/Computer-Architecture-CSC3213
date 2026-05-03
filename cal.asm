.model small
.stack 100h
.data
n1 db 2
n2 db 3
msg1 db "number1 : ",13,10,"$"
msg2 db "number2 : ",13,10,"$"
madd db "Addtion : ","$"
msub db "Substraction : ","$"
mmul db "Multiplication : ","$"
mdiv db "Divition : ","$"

.code
start:

mov ax,@data
mov ds,ax

;Addtion
mov dx,offset madd
mov ah,09h
int 21h

mov dl,n1
add dl,n2
add dl,48
mov ah,02h
int 21h

;Substraction
mov dx,offset msub
mov ah,09h
int 21h

mov dl,n2
sub dl,n1
add dl,48
mov ah,02h
int 21h

;Multiplication
mov dx,offset mmul
mov ah,09h
int 21h

mov al,n1
mul n2
mov dl,al
add dl,48
mov ah,02h
int 21h

;Divition
mov dx,offset mdiv
mov ah,09h
int 21h

xor ax,ax
mov al,n1
div n2
mov dl,al
add dl,48
mov ah,02h
int 21h



mov ax,4c00h
int 21h
end start