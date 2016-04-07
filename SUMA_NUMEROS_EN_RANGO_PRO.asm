  INCLUDE "EMU8086.INC"
  
    MOV BX,DATOS
    
    
    CICLO:
    
        MOV AL,[BX]
           
           
           CMP AL,"/"
           JE SALIR
           
            
            CMP AL,16
            JGE COMPARA1
             
             INC BX
             JMP CICLO
            
            
            COMPARA1:
            
                CMP AL,35
                JBE GUARDA
                       
                     INC BX  
                    JMP CICLO
                        
                    GUARDA:
                        ADD DX,AX
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
