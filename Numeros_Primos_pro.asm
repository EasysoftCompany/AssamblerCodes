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
;                                          "NUMEROS PRIMOS"                                      *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                              PROGRAMA NO. 12                                   *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;   DESCRIPCION: EL PROGRAMA SOLICITA AL USUARIO EL NUMERO PARA DETERMINAR SI ESTE ES UN NUMERO  *
;                PRIMO O NO  Y MOSTRAR EN PANTALLA EL RESULTADO DE ESTA EVALUACION               *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;                                                                                                *
;*************************************************************************************************

INCLUDE "EMU8086.INC"
;CALCULA SI UN NUMERO ES PRIMO O NO 


MOV BX, DATOS
MOV DX,0
MOV CL,1

FOR: 



     MOV AX,0
     
    
        
            
       MOV AL,[BX] 
           
        CMP CL,AL
        JE IMPRIMIR
              
       DIV CL ; AL = AX/OPERANDO => AX/BL => 7/1
       
      
       
       CMP AH,0
       JE CONTADOR
       
           ADD CL,1
           JMP FOR
       
       CONTADOR:
       
        ADD DX,1
        ADD CL,1
        JMP FOR
            
            
    IMPRIMIR: 
    
        CMP AL,"/"
        JE SALIR
    
    
        CMP DX,1
        JE PRIMO 
        
            MOV AX,0
            MOV AL,[BX]
            
            PRINTN 
            PRINT "EL NUMERO "
            CALL PRINT_NUM
            PRINT " NO ES PRIMO"
            MOV DX,0
            MOV CL,1
            
            INC BX
            JMP FOR

                   
                PRIMO:
                     MOV AX,0
                    MOV AL,[BX]
                    
                    PRINTN 
                    PRINT "EL NUMERO "
                    CALL PRINT_NUM
                    PRINT " ES PRIMO"
                    INC BX
                    MOV DX,0
                    MOV CL,1
                    JMP FOR  
                    
                    
                    
                    SALIR:
                        RET
                
           DATOS: DB 5,9,8,14,7,17,"/"   ;DB => DATA BYTE ... DW = DATA WORD (8 BYTES)


;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE-------------- 
  
 DEFINE_SCAN_NUM 
 DEFINE_PRINT_NUM 
 DEFINE_PRINT_NUM_UNS  
  
 ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE----------- 
