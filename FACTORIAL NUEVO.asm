INCLUDE "EMU8086.INC"


MOV BX,DATOS
 
 
    
    
    MAIN:
    
     MOV AL,[BX]
     MOV DL,[BX] 
    
        CMP AL,"/"
        JE SALIR
    
            FOR:
                                
                CMP DL,1
                JE IMPRIMIR
                
                SUB DL,1
                
                MUL DL
                 
                
            JMP FOR
                      
            
            IMPRIMIR:
                PRINTN
                PRINT "FACTORIAL: "
                CALL PRINT_NUM
                
                INC BX
                
                MOV AX,0
                MOV DX,0 
                
                JMP MAIN
                
                
                
            SALIR:
            
                RET
    
    
    
    
     
    
    DATOS: DB 1,16,2,7,3,18,4,19,5,20,6,21,7,22,8,23,9,24,10,11,25,26,30,14,16,40,"/"
  
  DEFINE_PRINT_NUM
  DEFINE_PRINT_NUM_UNS
  DEFINE_SCAN_NUM

 