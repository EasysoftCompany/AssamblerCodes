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
;                                "ANITA LAVA LA TINA (REPETICIONES)"                             *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                              PROGRAMA NO. 1                                    *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;   DESCRIPCION: EL PROGRAMA IMPRIMIRA EN PANTALLA LA ORACION "ANITA LAVA LA TINA" 1500 VECES    *
;                UTILIZANDO UN CONTADOR BX                                                       *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;*************************************************************************************************


INCLUDE "EMU8086.INC"
 
 MOV AX,1   ;Inicializamos el registro AX en 1, este sera el contador
 MOV BX,1   ;Inicializamos el registro BL en 1, este sera la cantidad que se agrega en cada vuelta o loop
 
 
 EVALUAR:   ;Ponemos una etiqueta llamada evaluar que usaremos para comparar los valores
 
 CMP AX,1500   ;Comparamos el registro AX con las 1500 veces que se nos solicita imprimir la frase
 
 JBE IMPRIMIR   ;Si AX es Menor o Igual que (BE) 5 salta (J) a la etiqueta imprimir, si no sal (RET)
 
 
 
 RET
 
 
 
 IMPRIMIR:
 
    PRINT "ANITA LAVA LA TINA" ;Imprime Anita Lava la Tina
    ADD AX,BX                  ; Agrega al registro AX el registro Bl AX = AX + BL  --> AX = 1 + 1
    
    JMP EVALUAR ;Cuando termines, salta a Evaluar y se repite el proceso hasta las 1500 veces que se nos solicito

