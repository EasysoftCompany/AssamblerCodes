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
;                                "SUMATORIA DE NUMEROS ENTRE 2 RANGOS"                           *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                              PROGRAMA NO. 7                                    *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;   DESCRIPCION: EL PROGRAMA REALIZARA LA SUMA DE LOS NUMEROS COMPRENDIDOS ENTRE 0-13 Y 41-200   *
;                CUANDO EL USUARIO LO SOLICITE LO MOSTRARA EN PANTALLA, EL USARIO TAMBIEN PUEDE  *
;                DECIDIR SIMPLEMENTE SALIR DEL PROGRAMA. EL PROGRAMA MUESTRA UN MENSAJE CUANDO   *
;                EL NUMERO INGRESADO SE ENCUENTRA EN EL RANGO ESPECIFICADO                       *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;*************************************************************************************************


INCLUDE "EMU8086.INC"         


       PRINTN "**************************************************"
       PRINTN
       PRINTN "    SUMATORIAS DE NUMEROS ENTRE 1-13 Y 41-200"
       PRINTN 
       PRINTN "                 (888 = REALIZAR SUMA TOTAL)"
       PRINTN "                 (999 = SALIR)"
       PRINTN "**************************************************"
       PRINTN 
 

MOV BX,0

MENU:
PRINTN
PRINTN
PRINT "INGRESE UN NUMERO: "
CALL SCAN_NUM    
     
     MOV AX,CX
     
     CMP AX,999      ;COMPARAMOS SI EL NUMERO ELEGIDO ES 999, DE SER ASI, SALE DEL PROGRAMA SI NO SALTA A LA EVALUACION SUMA
          JE SALIR 
             JMP SUMA       
           SALIR:           
                RET
 
    SUMA:           
         CMP AX,888    ;COMPARAMOS SI EL NUMERO ELEGIDO ES 888, DE SER ASI SALTA A IMPRIMIR, SI NO SIGUE CON LAS COMPARACIONES RESPECTIVAS PARA LOS 2 RANGOS
          JE IMPRIMIR 
                   JMP COMPARACIONES 
           IMPRIMIR:
                MOV AX,BX
                PRINTN
                PRINT "LA SUMA DE LOS NUMEROS ES: "
                CALL PRINT_NUM
                PRINTN
                PRINT"*** HASTA LUEGO ***"          
                RET  
                
                
   COMPARACIONES:      
     
     CMP AX,200       ; COMPARA SI AX ES MENOR O IGUAL A 200, SI ES ASI SALTA A COMPARAR 1, SI NO SALTA A MENU
     JBE COMPARAR1
        
       
        JMP MENU
        
        COMPARAR1:
            CMP AX,41  ;COMPARA SI AX ES MAYOR O IGUAL A 41, SI ES ASI SALTA A GUARDAR, SI NO SALTA LA SIGUIENTE COMPARACION
            JGE GUARDAR
            
                            
                  CMP AX,13   ;COMPARA SI AX ES MENOR O IGUAL A 13, SI ES ASI SALTA A  COMPARAR 3, SI NO SALTA AL MENU
                  JBE COMPARAR3
                           
                           JMP MENU
                           
                         COMPARAR3:
                            CMP AX,0   ;COMPARA SI AX ES MAYOR O IGUAL A 0, SI ES ASI SALTA A GUARDAR
                            JGE GUARDAR
                  
            
                        
            GUARDAR:
                PRINTN
                PRINT "EN RANGO!, GUARDO EL VALOR"   ;IMRIME EN PANTALLA QUE EL VALOR SE GUARDO
                
                ADD BX,AX
                JMP MENU
                
                
                
            
 
 
 ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE-------------- 
  
 DEFINE_SCAN_NUM 
 DEFINE_PRINT_NUM 
 DEFINE_PRINT_NUM_UNS  
  
 ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE----------- 
