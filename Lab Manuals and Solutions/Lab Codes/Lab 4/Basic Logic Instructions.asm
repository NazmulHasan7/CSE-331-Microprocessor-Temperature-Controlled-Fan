; LAB4 - BASIC LOGIC INSTRUCTIONS

.MODEL SMALL
.STACK 100H
.DATA
.CODE
      MOV AH, 5H  ;0000 0101
      MOV AL, 4H  ;0000 0100  
      AND AH, AL  ;0000 0100 RESULT IN AH
     ;AND IS CLEAR OPERATION
       
      MOV BH, 5H  ;0000 0101
      MOV BL, 4H  ;0000 0100  
      OR  BL, BH  ;0000 0101 RESULT IN BL
     ;OR IS SET OPERATION
      
      MOV AH, 5H  ;0000 0101  
      XOR AH, AH  ;0000 0000 RESULT IN AH
     ;CLEARS REGISTER OR MEMORY   
     ;0000 0101
     ;0000 0101
     ;---------
     ;0000 0000
      
      MOV BX, 0
      SUB BX, BX
      XOR BX, BX
     ;ALL THREE INSTRUCTIONS DO THE SAME
      
     ;TEST IS EQUIVALENT TO AND OPERATIONS
     ;IT ONLY AFFECTS THE FLAG REGISTER      
      
EXIT:
      MOV AH, 4CH
      INT 21H