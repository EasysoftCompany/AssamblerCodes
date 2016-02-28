INCLUDE "EMU8086.INC"
;CALCULA SI UN NUMERO ES PRIMO O NO 

PRINT "INGRESE UN NUMERO >> "
CALL SCAN_NUM

MOV DX,0
MOV BX,1

FOR:
     MOV AX,0
     
    CMP BX,CX
    JE IMPRIMIR
        
        
   MOV AX,BX
   
   DIV CL
   
  
   
   CMP AH,0
   JE CONTADOR
   
   ADD BX,1
   JMP FOR
   
   CONTADOR:
   
    ADD DX,1
    ADD BX,1
    JMP FOR
            
            
            IMPRIMIR:
            
    
                    RET
                



    ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE-------------- 
  
 DEFINE_SCAN_NUM 
 DEFINE_PRINT_NUM 
 DEFINE_PRINT_NUM_UNS  
  
 ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE----------- 
