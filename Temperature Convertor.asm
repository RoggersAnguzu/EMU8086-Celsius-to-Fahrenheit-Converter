;The 9.5 and 32 are considered as Constants.
;f represents a memory location 200H where the converted temp is stored.
;Assume that the temp to be converted id 35C.   

org 100h

MOV AX ,C; Loading C into AX register.

MOV BX, #9;LoadsConstant 9 into BX register.

MUL BX; Multiplying the AX and BX contents and the answer is in AX ie AX=(C*9)

MOV CX, #5; Loads a constant 5 into the CX register.

DIV CX; The AX contents are divided by CX register and the result is stored in AX register. AX =((C*9)/5)

MOV BX, #32; Loads a constant 32 into the BX register.

ADD AX, BX; Adding the Contents in the BX to the AX contents and stored in the AX register.

MOV f, AX; Stored the Fahrenheit into memory location f. 

MOV DS,[2000H] ;This Copies the Contents  in the 2000H memory location to the DS register.

C EQU 23H  

f EQU [2000H] 
  
END; This Ends the Program  

ret                       