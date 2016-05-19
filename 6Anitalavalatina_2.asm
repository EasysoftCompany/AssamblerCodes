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
;                                "ANITA LAVA LA TINA VERSION 2"                             *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                              PROGRAMA NO. 4                                    *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;   DESCRIPCION: EL PROGRAMA IMPRIMIRA EN PANTALLA LA ORACION "ANITA LAVA LA TINA" 4 VECES       *
;                UTILIZANDO UN CONTADOR CX                                                       *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;*************************************************************************************************

INCLUDE "EMU8086.INC" 

MOV CX,0
MOV DX,0

ETIQ1:
  PRINTN "ANITA LAVA LA TINA"
  
  ADD CX,1
  CMP CX,4
  JE SALIDA
  
  JMP ETIQ1
  SALIDA:
  RET 
  
 
  
  
  