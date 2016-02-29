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
;                                          "GENERADOR DE SERIES"                                 *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                              PROGRAMA NO. 10                                   *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;   DESCRIPCION: EL PROGRAMA SOLICITA AL USUARIO EL NUMERO DE POSICIONES QUE OCUPARA LA SERIE    *
;                EN CADA ITERACION SE INCREMENTA EN 3 EL NUMERO QUE SE IMPRIMIRA EN PANTALLA     *
;                ENTONCES LA SERIE VA DE 3 EN 3                                                  *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;*************************************************************************************************

INCLUDE "EMU8086.INC"
;GENERA SERIE 3,6,9...


MOV BX,3  ;UNA CONSTANTE

PRINT "GENERAR CUANTOS NUMEROS? >>"
 CALL SCAN_NUM 
 
 
 CICLO:
 
 CMP DX,CX
 JE SALIR
 ADD AX,BX 
 ADD DX,1
     
     
     PRINTN 
     CALL PRINT_NUM
     JMP CICLO
     
   
   SALIR:
   RET     
   
   ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE-------------- 
  
 DEFINE_SCAN_NUM 
 DEFINE_PRINT_NUM 
 DEFINE_PRINT_NUM_UNS  
  
 ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE----------- 

   
 
  