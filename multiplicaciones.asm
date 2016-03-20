INCLUDE "EMU8086.INC"  
    
    MAIN:
    
    PRINT "MULTIPLICACIONES (9999 = SALIR) "
    
    PRINTN
    PRINT "PRIMER NUMERO: "
    CALL SCAN_NUM
    MOV AX,CX
    
    PRINTN
    PRINT "SEGUNDO NUMERO: "
    CALL SCAN_NUM
    MOV BX,CX
    
    
    CMP AX,9999
    JE SALIR
    
    CMP BX,9999
    JE SALIR
    
    
    MOV DX,0
    MOV CX,0 
    
     CICLO:
    
    CMP AX,DX
    JE IMPRIMIR
                
        ADD CX,BX        
        ADD DX,1 
        JMP CICLO
        
        
        IMPRIMIR:
        
            PRINTN
            PRINTN
            CALL PRINT_NUM
            PRINT " X "
            MOV AX,BX
            CALL PRINT_NUM
            PRINT " = "
            MOV AX,CX
            CALL PRINT_NUM
            
            PRINTN 
            JMP MAIN
            
            
            
            SALIR: 
            PRINTN
            PRINTN
            PRINTN
            PRINT "ADIOS!"
            RET
    
       
    
    
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS