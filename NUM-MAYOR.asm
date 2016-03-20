;prog 15
INCLUDE "EMU8086.INC"



    CICLO:
    PRINT "   DAME UN NUMERO:  "
    CALL SCAN_NUM   
    PRINTN " "
    PRINT "  "
    
    
    CMP CX, 999
    JE EXIT 
    
    CMP CX,AX
    JG MAYOR
    
    JMP CICLO
    
    
    MAYOR:
    MOV AX, CX
    JMP CICLO
    
    
    EXIT:
    PRINT "EL NUMERO MAYOR ES: "
    CALL PRINT_NUM
    RET
    
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS