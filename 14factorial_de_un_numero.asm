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
;                                          "FACTORIAL DE UN NUMERO"                              *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                              PROGRAMA NO. 11                                   *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;   DESCRIPCION: EL PROGRAMA SOLICITA AL USUARIO EL NUMERO PARA CALCULAR SU FACTORIAL Y MOSTRAR  *
;                PANTALLA EL RESULTADO                                                           *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;*************************************************************************************************

INCLUDE "EMU8086.INC"

PRINTN
PRINT "CALCULAR EL FACTORIAL DE QUE NUMERO? >> "
CALL SCAN_NUM
    
    MOV AL,CL
    MOV BX,CX
    
FACTORIAL:

    CMP BX,1
    JE SALIR
    
    SUB BX,1
    
    MUL BX
         
         JMP FACTORIAL
         
         
    SALIR:
    
        PRINTN
        PRINT "EL FACTORIAL DEL NUMERO ES: "
        CALL PRINT_NUM
      

   
   ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE-------------- 
  
 DEFINE_SCAN_NUM 
 DEFINE_PRINT_NUM 
 DEFINE_PRINT_NUM_UNS  
  
 ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE----------- 

   
 
  