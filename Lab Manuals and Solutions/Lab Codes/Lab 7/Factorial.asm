;FACTORIAL OF A NUMBER 

INCLUDE "EMU8086.INC"
.MODEL SAMLL
.STACK 100H
.DATA
.CODE
      CALL SCAN_NUM 
      PRINTN        
      PRINT "FACTORIAL = "
      
      MOV AX, 1
      
FACT:
      MUL CX
      DEC CX
      CMP CX, 1
      JNE FACT
      
      CALL PRINT_NUM

EXIT: 
      MOV AH, 4CH
      INT 21H

DEFINE_PRINT_NUM
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM_UNS      
      



