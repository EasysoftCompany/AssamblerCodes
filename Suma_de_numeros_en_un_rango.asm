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
;                                "SUMATORIA DE NUMEROS EN UN RANGO"                              *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                              PROGRAMA NO. 7                                    *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;   DESCRIPCION: EL PROGRAMA REALIZARA LA SUMA DE LOS NUMEROS COMPRENDIDOS ENTRE 12 Y 34         *
;                CUANDO EL USUARIO LO SOLICITE LO MOSTRARA EN PANTALLA,EL PROGRAMA MUESTRA UN    *
;                MENSAJE CUANDO EL NUMERO INGRESADO SE ENCUENTRA EN EL RANGO ESPECIFICADO        *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;*************************************************************************************************


INCLUDE "EMU8086.INC"  

MOV BX,0

MENU:
PRINTN
PRINTN
PRINT "INGRESE UN NUMERO: "
CALL SCAN_NUM    
     
     MOV AX,CX
     
     CMP AX,12
     JGE COMPARAR1
        
       
        JMP MENU
        
        COMPARAR1:
            
            
        
            CMP AX,34
            JBE COMPARAR2:
                  
                  CMP AX,999
                    JE IMPRIMIR 
                    
                    IMPRIMIR:
                    
                        PRINTN
                        PRINT "LA SUMA DE LOS NUMEROS ES: "
                        MOV AX,BX
                        CALL PRINT_NUM 
                        RET
            
            JMP MENU
            
            COMPARAR2:
                PRINTN
                PRINT "EN RANGO!, GUARDO EL VALOR"
                
                ADD BX,AX
                JMP MENU
                
                
                
            
 
 
 ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE-------------- 
  
 DEFINE_SCAN_NUM 
 DEFINE_PRINT_NUM 
 DEFINE_PRINT_NUM_UNS  
  
 ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE----------- 
