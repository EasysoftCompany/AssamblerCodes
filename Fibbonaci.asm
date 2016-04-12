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
;                                             "SERIE FIBBONACI"                                  *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                              PROGRAMA NO. 18                                   *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;   DESCRIPCION: EL PROGRAMA IMPRIMIRA LAS 10 PRIMERAS POSISIONES DE LA SERIE Y TERMINA          *
;                                                                                                *
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
MOV CX,10  
            

CICLO: 
      
      
      ADD AX,BX 
      MOV BX,DX 
      MOV DX,AX      
      
      CALL PRINT_NUM 
      PRINT ", "  
      
LOOP CICLO  
                  
      RET    
       

;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE-------------- 
  
 DEFINE_SCAN_NUM 
 DEFINE_PRINT_NUM 
 DEFINE_PRINT_NUM_UNS  
  
 ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE----------- 

   
 
  