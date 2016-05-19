INCLUDE "EMU8086.INC"  
  

    MOV DX,100
    MOV BX,DATOS
    
   
    
    MOV AL,[BX]
     
    CMP AL,DL
    JB MENOR

    CICLO:  
    
    MOV AL,[BX]
      
      
    
    CMP AL, "/"
    JE EXIT  
    
    CMP AL,DL
    JB MENOR
    
     INC BX
    
    JMP CICLO
    
    
    
    MENOR:
    
    
    MOV DL,AL
    
    INC BX
    JMP CICLO
    
    
    EXIT:
    MOV AX,DX
    PRINT "EL NUMERO MENOR ES: "
    CALL PRINT_NUM
    RET  
    
        
 DATOS: DB 1,16,2,"/"
    
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
