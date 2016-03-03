;*************************************************************************************************   
;                                                                                                *
;                                     INSTITUTO POLITECNICO NACIONAL                             *
;                                                                                                *
;                                                                                                *
;                       UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERIA                      *
;                                                                                                *
;                                Y CIENCIAS SOCIALES Y ADMISTRATIVAS                             *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                          "NUMEROS GANADOR"                                     *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                           PROGRAMA NO. 13                                      *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;   DESCRIPCION: EL PROGRAMA SOLICITA AL USUARIO EL NUMERO PARA DETERMINAR SI ESTE ES UN NUMERO  *
;                PRIMO O NO  Y MOSTRAR EN PANTALLA EL RESULTADO DE ESTA EVALUACION               *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;*************************************************************************************************

INCLUDE "EMU8086.INC"
MOV DX, 33; #NUMERO GANADOR
MOV BX, 0 ;CONTADOR
     
    CICLO:    
    PRINTN "DAME UN NUMERO" 
    CALL SCAN_NUM
    
    
    CMP CX, 34 
    JGE LEYENDA2
    CMP CX, 32   
    JBE LEYENDA
    CMP CX, 33
    JE LEYENDA3
    
    LEYENDA3:
    MOV AX,CX
    PRINT " "
    PRINT "FELICIDADES, LOGRASTE ADIVINAR EL NUMERO MAGICO "
    CALL PRINT_NUM
    PRINT " EN "
    MOV AX,BX 
    CALL PRINT_NUM
    PRINT " INTENTOS!"
    RET
       
    LEYENDA:
    MOV AX,CX
    ADD BX,1
    PRINT " "
    PRINT "EL NUMERO MAGICO ES MAYOR A: "
    CALL PRINT_NUM
    PRINTN " "
    JMP CICLO
    
    LEYENDA2:
    MOV AX,CX
    ADD BX,1
    PRINT " "
    PRINT "EL NUMERO MAGICO ES MENOR A: "
    CALL PRINT_NUM                       
    PRINTN " "
    JMP CICLO
    
    DEFINE_PRINT_NUM
    DEFINE_SCAN_NUM   
    DEFINE_PRINT_NUM_UNS