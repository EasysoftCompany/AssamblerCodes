INCLUDE "EMU8086.INC"


MOV BX,DATOS
 
 
    
    
    MAIN:
    
     MOV CL,[BX]
     MOV DX,AX 
    
        CMP AL,"/"
        JE SALIR
    
            FOR:
                                
                
                
                SUB DX,1
                
                MOV 
                MUL DX
                
                CMP DX,1
                JE IMPRIMIR
                 
                
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
    
    
    
    
     
    
    DATOS: DB 1,2,3,4,5,"/"
  
  DEFINE_PRINT_NUM
  DEFINE_PRINT_NUM_UNS
  DEFINE_SCAN_NUM

 