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
;                                          "PAR IMPAR VERSION 4"                                 *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                              PROGRAMA NO. 6                                    *
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
 MOV DX,999 
  
  
 MENU: 
  
      
     PRINT "(Salir = 999) TECLEA UN NUMERO: " 
     CALL SCAN_NUM ;HOLA, SOY UN MACRO Y LEERE UN NUMERO! 
                   ;CON CALL SCAN_NUM VA A DIRIGIR LA ENTRADA DE DATOS A CX SIEMPRE 
      
      
     MOV AX,CX ;ASIGNAMOS LO INGRESADO POR EL USUARIO A AX, ESTO PARA PODER HACER USO DE DIV 
      
      
      
      
     CMP DX,AX 
     JNE COMPARAR 
              
                 PRINTN 
                 PRINT "HASTA LUEGO" 
                 RET 
                  
     
         COMPARAR: 
                 
                 CMP AX,200
                 JBE DIVIDIR
                        
                        PRINTN
                        PRINT "NO ES PERMITIDO EL NUMERO "
                        CALL PRINT_NUM
                        PRINT " PORFAVOR INGRESA UN NUMERO MENOR"
                        PRINTN
                        JMP MENU
                    
                    
                    DIVIDIR:
                              
                      DIV BL;  AL= AX/OPERANDO<BL> AH= RESIDUO 
                  
                     CMP AH,0 ;COMPARAR EL RESIDUO CON 0 
                     JE PAR   ;SI ES IGUAL A 0 SALTA A LA ETIQUETA PAR: 
                      
                      
                          
                         PRINTN ;SALTO DE LINEA 
                         PRINT "ES IMPAR (PERO NO ES KAWAII!  =u_u=)" 
                         PRINTN 
                         JMP MENU 
                                          
                      
                         
                         
                         PAR:      ;ETIQUETA PAR  
                          
                             PRINTN 
                             PRINT "ES PAR (Y ES MUY KAWAII! =^_^=)" 
                             PRINTN 
                             JMP MENU 
              
  
  
 ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE-------------- 
  
 DEFINE_SCAN_NUM 
 DEFINE_PRINT_NUM 
 DEFINE_PRINT_NUM_UNS  
  
 ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE----------- 
