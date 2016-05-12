ORG 100h
 
    LEA SI,MSG   ;LOAD ADDRESS OF msg TO SI 
    
    CALL PRINT_ME 
    
RET              ;RETURN TO OPERATING SYSTEM
;============================================================
;THIS PROCEDURE PRINTS A STRING,THE STRING SHOULD BE NULL
;TERMINATED (HAVE ZERO IN THE END)
;THE STRING ADDRESS SHOULD BE IN SI REGISTER :

PRINT_ME PROC

NEXT_CHAR:

    CMP B.[SI],0 ;CHECK FOR ZERO TO STOP
    JE STOP

    MOV AL,[SI] ; NEXT GET ASCII CHAR.   
    MOV AH,0Eh  ; TELETYPE FUNCTION NUMBER
    INT 10h     ; USING INTERRUPT TO PRINT A CHAR IN AL 
    
    ADD SI,1    ; ADVANCE INDEX OF STRING ARRAY
    
    JMP NEXT_CHAR  ; GO BACK AND TYPE ANOTHER CHAR 
    
    
    STOP:
    
    RET     ; RETUNR TO CALLER
    
    PRINT_ME    ENDP

;==================================================================


MSG  DB  'HELLO WORLD!', 0 ; NULL TERMINATED STRING.

END                          