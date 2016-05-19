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
;                                          "PAR IMPAR VERSION 3"                                 *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                              PROGRAMA NO. 5                                    *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;   DESCRIPCION: EL PROGRAMA UTILIZA EL NUMERO 8 DIVIDE EL NUMERO ENTRE 2 Y EVALUA EL RESIDUO    *
;                SI ESTE ES 0 IMPRIME QUE EL NUMERO ES PAR, DE LO CONTRARIO IMPRIME QUE ES IMPAR *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;*************************************************************************************************

INCLUDE "EMU8086.INC"

MOV AX,8
MOV CL,2
DIV CL

CMP AH,0
JE ETIQ1
PRINT "ES IMPAR"
RET

ETIQ1:
PRINT "ES PAR"
RET 
