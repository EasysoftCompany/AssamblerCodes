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
;                                             "SERIE FIBBONACI V2"                               *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                              PROGRAMA NO. 19                                   *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;   DESCRIPCION: EL PROGRAMA SOLICITA AL USUARIO LA CANTIDAD DE POSISCIONES A IMPRIMIR (MENOR A  *
;                24) E IMPRIME LAS POSISIONES DE LA SERIE Y TERMINA                              *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;*************************************************************************************************



INCLUDE "EMU8086.INC"

MOV AX,00 
MOV BX,01 
MOV DX,00  

INICIO:

PRINTN "INGRESE LA CANTIDAD DE NUMEROS QUE QUIERA QUE SE MUESTREN (NO MAYOR A 24): "                                                      
PRINTN


CALL SCAN_NUM     
PRINTN " "
      
CMP CX,24
JGE ERROR      

CICLO: 
      
      
      ADD AX,BX 
      MOV BX,DX 
      MOV DX,AX      
      
      CALL PRINT_NUM 
      PRINT ", "  
      
LOOP CICLO  
       
      PRINTN " "
      PRINTN " "
      PRINT "EL ULTIMO NUMERO DE LA SERIE QUE SE COLOCO FUE: "
      CALL PRINT_NUM
                    
      RET    
      
ERROR:

    PRINTN "ERROR CON LA CANTIDAD" 
    PRINT "INGRESE UN VALOR ADMITIDO"
    PRINTN " "
    PRINTN " "
    JMP INICIO     



DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS