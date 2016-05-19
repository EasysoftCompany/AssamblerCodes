MOV AX,5
MOV BX,8
MOV CX,17

PUSH AX;                 *--------*              *--------*      /* ESTE STACK SIRVE PARA GUARDAR LOS REGISTROS CON (PUSH) Y LUEGO OBTENERLOS (POP)
PUSH BX;                 |        |              |        |         EN ESTE EJEMPLO AX TOMARA EL VALOR DE CX, BX EL VALOR DE BX Y CX TOMA EL VALOR DE AX
PUSH CX;                 |--------|              |--------|
       ;                 |        |              |POP AX  |
POP AX ;                 |PUSH CX |              |        |
POP BX ;                 |--------|      ==>     |--------|
POP CX ;                 |        |              |POP BX  |
       ;                 |PUSH BX |              |        |
       ;                 |--------|              |--------|
       ;                 |        |              |POP CX  |
       ;                 |PUSH AX |              |        |
       ;                 *--------*              *--------*