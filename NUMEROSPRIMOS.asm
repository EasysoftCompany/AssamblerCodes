INCLUDE "EMU8086.INC"
;CALCULA SI UN NUMERO ES PRIMO O NO 

PRINT "INGRESE UN NUMERO >> "
CALL SCAN_NUM

MOV DX,0
MOV BL,1

FOR:
     MOV AX,0
     
    CMP BX,CX
    JE IMPRIMIR
        
        
   MOV AX,CX
   
   
   DIV BL
   
  
   
   CMP AH,0
   JE CONTADOR
   
   ADD BL,1
   JMP FOR
   
   CONTADOR:
   
    ADD DX,1
    ADD BL,1
    JMP FOR
            
            
            IMPRIMIR:
            
                CMP DX,1
                JE PRIMO
                    PRINTN
                    PRINT "NO ES NUMERO PRIMO" 
                    RET

                   
                PRIMO:
                    PRINTN
                    PRINT "ES NUMERO PRIMO" 
                    RET
                



    ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE-------------- 
  
 DEFINE_SCAN_NUM 
 DEFINE_PRINT_NUM 
 DEFINE_PRINT_NUM_UNS  
  
 ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE----------- 
