'==========================================================
' Program Description  :
' Created By           :
' Version              :
' Date                 : DD/MM/2017
'==========================================================


'==========================================================
'INITIALIZE
'==========================================================

INCLUDE "INITIALISE"
ON BASICERROR GOTO error_routine


'
'
'
'
'
'
'       CODING SPACE
'
'
'
'
'
'

'==========================================================
'SUBROUTINE FOR ERROR-ROUTINE
'==========================================================

error_routine:

IF RUN_ERROR <>31 THEN ' 31 is normal stop. Hence not an error
    VR(error_code_autom) = RUN_ERROR
    VR(error_line_autom) = ERROR_LINE
    PRINT#7, "The error ";RUN_ERROR[0];
    OP(alm5,ON)

    PRINT#7, " occurred in line ";ERROR_LINE[0];"in CAD2motion_2"
ENDIF
STOP


