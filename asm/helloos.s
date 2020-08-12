;hello-os
;TAB=4
    org 0x7c00
    jmp entry
    db 0x90

entry: ;initialized 
    mov ax,0  ; 初始化寄存器
    mov ss,ax;
    mov sp,0x7c00
    mov ds,ax
    mov es,ax
putloop:
    mov al,[si]
    add si,1 ; 给SI加1
    cmp al,0
    je fin
    mov ah,0x0e  ; 显示一个文字
    mov bx,15 ; 指定字符颜色
    int 0x10   ; 调用显卡BIOS
    jmp putloop
fin:
    hlt ; 让CPU停止,等待指令
    jmp fin  ; 无限循环

msg:
    db 0x0a,0x0a ; 换行2次
    db "hello,world"
    db 0xa  ; 换行
    db 0
