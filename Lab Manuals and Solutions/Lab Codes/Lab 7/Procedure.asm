
INCLUDE EMU8086.INC
.MODEL SMALL
.STACK 100H
.CODE
      MAIN PROC
            CALL SCAN_NUM ;LIBRARY PROC
            PRINTN
            
            MOV AX, CX
            CALL SCAN_NUM ;LIBRARY PROC
            PRINTN
            
            CALL SUM ;USER-DEFINED PROC
            CALL PRINT_NUM ;LIBRARY PROC
EXIT:
      MOV AH, 4CH
      INT 21H
      MAIN ENDP

      SUM PROC
            ADD AX, CX
      RET
      SUM ENDP     
      
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS