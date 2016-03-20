INCLUDE "EMU8086.INC"  

    PRINT "MULTIPLICACIONES  "
    
    PRINTN
    PRINT "PRIMER NUMERO: "
    CALL SCAN_NUM
    MOV AX,CX
    
    PRINTN
    PRINT "SEGUNDO NUMERO: "
    CALL SCAN_NUM
    MOV BX,CX
    
    MOV DX,0
    MOV CX,0 
    
     CICLO:
    
    CMP AX,DX
    JE SALIR
                
        ADD CX,BX        
        ADD DX,1 
        JMP CICLO
        
        
        SALIR:
        
            PRINTN
            PRINTN
            CALL PRINT_NUM
            PRINT " X "
            MOV AX,BX
            CALL PRINT_NUM
            PRINT " = "
            MOV AX,CX
            CALL PRINT_NUM
            RET
    
       
    
    
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS