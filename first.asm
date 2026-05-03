.model small
.stack 100h
.data
msg db "hello $"

.code
start:

mov ax,@data
mov ds,ax

mov dx,offset msg
mov ah,