
INCLUDE "EMU8086.INC" 

MOV DL,2
MOV BX, DATOS

    CICLO:
        MOV AL,[BX]
        
        CMP AL,"/"
        JE SALIR
        
           
          
          DIV DL
          CMP AH,0
          JE PAR
             
            MOV AX,0
            MOV AL,[BX]
            
            PRINTN 
            PRINT "EL NUMERO "
            CALL PRINT_NUM
            PRINT " ES IMPAR"
            INC BX
            JMP CICLO
            
            PAR:  
            
            MOV AX,0
            MOV AL,[BX]
           
            PRINTN
            PRINT "EL NUMERO "
            CALL PRINT_NUM
                PRINT " ES PAR"
                  INC BX
                JMP CICLO
                
                
                SALIR:
                RET
                
                
                
                DATOS: DB 5,9,8,14,7,17,"/"


    ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE-------------- 
  
 DEFINE_SCAN_NUM 
 DEFINE_PRINT_NUM 
 DEFINE_PRINT_NUM_UNS  
  
 ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE----------- 
