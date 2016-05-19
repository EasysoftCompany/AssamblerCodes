include 'emu8086.inc' 
name "ordena mayor a menor"
;Ordenar la lista Ejem.: 1 2 3 8 6 7 9 4 en forma decreciente  
mov bx,lista
mov al,0 ;primer numero temporal  
mov cl,0 ;segundo numero temporal
mov dl,0 ;contador de cambios 
    
lazo:
    mov al,[bx]
    inc bx
    mov cl,[bx]     
    cmp cl,0
    jz cambios ; verifica el numero de cambios  
    cmp al,cl
    jg mayor  ;Cambiar Orden Creciente o Decreciente aplicando la comparacion de 2 elementos de la "lista"
    jmp lazo   
     
mayor:   
    dec bx
    mov [bx],cl
    inc bx
    mov [bx],al
    inc dl    
    jmp lazo 
                        
cambios:
    cmp dl,0
    jz puente
    mov bx,0
    mov bx,lista            
    mov ax,0
    mov cx,0
    mov dl,0
    jmp lazo

puente:
    mov bx,0
    mov bx,lista
    jmp imprime

imprime:
    mov ax,0
    mov al,[bx]
    cmp al,0
    jz fin
    call print_num
    print ", "
    inc bx
    jmp imprime

    
    
lista: DB 1,3,5,5,7,8,6,4,2,0

define_print_num
define_print_num_uns

fin:
end