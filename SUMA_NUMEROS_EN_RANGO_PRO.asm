  INCLUDE "EMU8086.INC"
  
    MOV BX,DATOS
    
    
    CICLO:
    
        MOV AL,[BX]
           
           
           CMP AL,"/"
           JE SALIR
           
            
            CMP AL,16
            JGE COMPARA1
             
             JMP NOGUARDA
            
            
            COMPARA1:
            
                CMP AL,35
                JBE GUARDA
                       
                    JMP NOGUARDA 
                    
                    
                    
                    NOGUARDA:
                    
                            PRINTN 
                            PRINT "EL NUMERO "
                            CALL PRINT_NUM
                            PRINT " NO ES CONSIDERADO. LA SUMA AL MOMENTO ES: "
                            MOV AX,DX
                            CALL PRINT_NUM
                            INC BX
                            JMP CICLO
                        
                    
                        
                    GUARDA:
                        ADD DX,AX
                        
                            PRINTN 
                            PRINT "EL NUMERO "
                            CALL PRINT_NUM
                            PRINT " ES CONSIDERADO. LA SUMA AL MOMENTO ES: "
                            MOV AX,DX
                            CALL PRINT_NUM
                            INC BX
                            JMP CICLO
      
            
            SALIR:
            
                PRINTN 
                PRINT "LA SUMA DE LOS VALORES ES: "
                MOV AX,DX
                CALL PRINT_NUM
                RET
                
           
   
   
 
 DATOS: DB 1,16,2,7,3,18,4,19,5,20,6,21,7,22,8,23,9,24,10,11,25,26,30,14,16,40,"/"
  
        
   ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE-------------- 
  
 DEFINE_SCAN_NUM 
 DEFINE_PRINT_NUM 
 DEFINE_PRINT_NUM_UNS  
  
 ;---------INCLUIR ESTAS LIBRERIAS PARA QUE JALE----------- 
