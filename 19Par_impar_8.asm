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
;                                          "PAR IMPAR VERSION 6"                                 *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                              PROGRAMA NO. 9                                    *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;   DESCRIPCION: EL PROGRAMA SOLICITA AL USUARIO UN NUMERO "X" DIVIDE EL NUMERO ENTRE 2 Y EVALUA *
;                EL RESIDUO, SI ESTE ES 0 IMPRIME QUE EL NUMERO ES PAR, DE LO CONTRARIO IMPRIME  *
;                QUE ES IMPAR, ADEMAS SI EL USUARIO INGRESA EL NUMERO "999" EL PROGRAMA TERMINA  *
;                DE LO CONTRARIO EL PROGRAMA VUELVE A SOLICITAR UN NUMERO Y VUELVE A EMPEZAR     *
;                ADEMAS DE SOLO PERMITIR NUMEROS MENORES A 200                                   *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;*************************************************************************************************

INCLUDE "EMU8086.INC"

MOV BL,2 ; ASIGNAR EL NUMERO 2 AL REGISTRO BL (PERMANECE CONSTANTE)

       PRINTN "*****************************************"
       PRINTN
       PRINTN "  SUMA DE LOS PRIMEROS 50 NUMEROS IMPARES"
       PRINTN 
       PRINTN
       PRINTN "******************************************"
       PRINTN
  
  
    MOV DX,0
    MOV AX,0
    MOV CX,1
    MOV BL,2     

CICLO:  
        MOV AX,0
        MOV AX,CX
             
        CMP AX,100
        JE SALIR     
             
        DIV BL ; AL = AX/BL AH= RESIDUO
        
        CMP AH,0
        JNE SUMAR
        
        ADD CX,1
        JMP CICLO
        
        SUMAR:
            ADD DX,CX
            ADD CX,1
            JMP CICLO
            
            SALIR:
            
            PRINTN
            PRINT "LA SUMA DE LOS PRIMEROS 50 NUMEROS IMPARES ES: "
            MOV AX,DX
            
            CALL PRINT_NUM
            RET

   
    


;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE--------------

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS 

;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE--------------



 