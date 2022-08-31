'==========================================================
' Program Description  : CAD2Motion RTA
' Created By           : Archana Nair
' Version              : 1.00
' Date                 : 28/03/2017
'==========================================================
'                  Version History
'==========================================================
'Version   Modified By     Date            Modification
' -.--     --              --/--/----      -----------
'==========================================================

'==========================================================
'INITIALIZE
'==========================================================

INCLUDE "INITIALISE"
ON BASICERROR GOTO error_routine

'==========================================================
'SETTING PARAMETER
'==========================================================
BASE(8, 9, 10, 11, 13, 15)

SPEED = ((100 * VR(spd_task_bar))/100) 'VR(911): Speed value for cad profile

PRINT#6,"PARAMETER IS SET"

'==========================================================
'CAD-Profile in TABLE form
'==========================================================

'PASTE THE CODE with TABLE VALUES HERE (start adrees TABLE(25000))


TABLE(20000, 42) 'The all points number
TABLE(20001, 1, -16.305, 12.108, 0, 0, 0)
TABLE(20007, 3, -8.2767, 7.1087, 3.6626, 12.637, 1)
TABLE(20013, 3, -0.0952, 3.9279, 4.4782, 2.0736, 1)
TABLE(20019, 3, -3.4251, 9.3387, -6.8601, 2.7814, 0)
TABLE(20025, 3, -1.7162, 7.2533, 2.29, 4.3715, 1)
TABLE(20031, 3, -1.3915, 15.4403, -9.6148, 6.9164, 0)
TABLE(20037, 3, 0.3457, 7.407, 3.4264, 3.5516, 1)'HOLE NO 3
TABLE(20043, 3, -1.66, 12.5675, -4.621, 5.783, 0)
TABLE(20049, 3, -2.961, 4.523, 1.974, 4.523, 1)
TABLE(20055, 1, -1, 32.67, 0, 0, 0) '31.67
TABLE(20061, 3, 2.961, 4.523, 4.935, 0, 1)'HOLE NO 4
TABLE(20067, 3, 0, 13.569, -2.961, 6.7845, 0)
TABLE(20073, 3, -2.961, 4.523, 1.974, 4.523, 1)
TABLE(20079, 1, -2, 31.37, 0, 0, 0)'0, 31.67 'HOLE NO 5
TABLE(20085, 3, 2.961, 4.523, 4.935, 0, 1)
TABLE(20091, 3, 0, 13.569, -2.961, 6.7845, 0)
TABLE(20097, 3, -2.961, 4.523, 1.974, 4.523, 1)
TABLE(20103, 1, -1, 31.3694, 0, 0, 0) ' 0, 31.6694
TABLE(20109, 3, 2.961, 4.523, 4.935, 0, 1)'HOLE NO 6
TABLE(20115, 3, 0, 13.569, -2.961, 6.7845, 0)
TABLE(20121, 3, -2.961, 4.523, 1.974, 4.523, 1)
TABLE(20127, 1, -1, 32.67, 0, 0, 0)'0, 31.67
TABLE(20133, 3, 2.961, 4.523, 4.935, 0, 1)'HOLE NO 7
TABLE(20139, 3, 0, 13.569, -2.961, 6.7845, 0)
TABLE(20145, 3, -2.961, 4.523, 1.974, 4.523, 1)
TABLE(20151, 1, -1, 28.2091, 0, 0, 0)'0, 28.7091
TABLE(20157, 3, 2.961, 4.523, 4.935, 0, 1)'HOLE NO 8
TABLE(20163, 3, 0, 13.569, -2.961, 6.7845, 0)
TABLE(20169, 3, -2.961, 4.523, 1.974, 4.523, 1)
TABLE(20175, 1, -2, 28.709, 0, 0, 0)'0, 28.709
TABLE(20181, 3, 2.961, 4.523, 4.935, 0, 1)'HOLE NO 9
TABLE(20187, 3, 0, 13.569, -2.961, 6.7845, 0)
TABLE(20193, 3, -2.961, 4.523, 1.974, 4.523, 1)
TABLE(20199, 1, 0, 28.735, 0, 0, 0)'0, 26.735
TABLE(20205, 3, 2.961, 4.523, 4.935, 0, 1)'HOLE NO 10
TABLE(20211, 3, 1.979, 12.2976, -2.961, 6.7845, 0)
TABLE(20217, 3, -0.2894, 7.0692, 3.2933, 3.6754, 1)
TABLE(20223, 3, 0.4326, 15.808, -8.5986, 8.1452, 0)'HOLE NO 11
TABLE(20229, 3, 3.763, 8.1278, 3.763, 3.1928, 1)
TABLE(20235, 1, 10.8043, 0, 0, 0, 0) '13.4043
TABLE(20241, 3, 4.523, -2.961, 0, -4.935, 1)'HOLE NO 12
TABLE(20247, 3, 13.569, -2.961, 6.7845, 2.961, 0)'6.7845, -4.4415, 6.7845, 2.961


'==========================================================
'$EndLayer0:0

tablestart = 20000'25012'25000

size = TABLE(tablestart)
BASE(8, 9, 10, 11, 13, 15)
MERGE = ON
index = tablestart + 1
FOR i = 0 TO size
    command = TABLE(index)
    IF command = 1 THEN
        MOVE(TABLE(index + 1), TABLE(index + 2), 0, 0, 0, 0)
        PRINT#6, "MOVE("; TABLE(index + 1); ","; TABLE(index + 2); ")"
        index = index + 6
    ELSEIF command = 2 THEN
        MOVEABS(TABLE(index + 1), TABLE(index + 2), 0, 0, 0, 0)
        PRINT#6, "MOVEABS("; TABLE(index + 1); ","; TABLE(index + 2); ")"
        index = index + 6
    ELSEIF command = 3 THEN
'    MOVECIRC(index+1,index+2,index+3,index+4,index+5)
        PRINT#6, "MOVECIRC(";TABLE(index+1);",";TABLE(index+2);",";TABLE(index+3);",";TABLE(index+4);","; _
            TABLE(index+5);","; ")"
        MSPHERICAL(TABLE(index + 1), TABLE(index + 2), 0, TABLE(index + 3), TABLE(index + 4), 0, 1, 0, 0, 0, 0)
        index = index + 6
    ENDIF
NEXT i

''WAIT IDLE

''UNTIL VR(auto) = 0 OR VR(910) = 0 OR IN(auto_man_ip) = OFF
STOP

'==========================================================
'SUBROUTINE FOR ERROR-ROUTINE
'==========================================================

error_routine:

IF RUN_ERROR <>31 THEN ' 31 is normal stop. Hence not an error
    VR(error_code_autom) = RUN_ERROR
    VR(error_line_autom) = ERROR_LINE
    PRINT#7, "The error ";RUN_ERROR[0];
    OP(alm5,ON)

    PRINT#7, " occurred in line ";ERROR_LINE[0];"in CAD2motion"
ENDIF

STOP

