# EMU8086-Celsius-to-Fahrenheit-Converter
This is used to Convert Celsius Degrees Fahrenheit in Emulator 8086 environment.
![image](https://github.com/RoggersAnguzu/EMU8086-Celsius-to-Fahrenheit-Converter/assets/141458053/71b60efd-3f99-4dd7-80ca-9ecb348d8bf4)

This 8086 emulator code is designed to convert temperature from Celsius to Fahrenheit. It follows a simple formula for the conversion:

Fahrenheit (F) = (Celsius (C) * 9/5) + 32

The code uses assembly language instructions to perform this conversion, where 9.5 and 32 are considered as constants.

# Code Overview
The code provides a step-by-step explanation of the temperature conversion process:

# Initialization: The program begins by initializing the constants and memory locations.
C EQU 23H      ; Define the constant value for Celsius
f EQU [2000H]  ; Define the memory location (2000H) for storing the Fahrenheit result
Conversion: The actual conversion process takes place in the following steps:

# Load the value of Celsius (C) into the AX register.
Load the constant value 9 into the BX register and multiply it by the value in AX. The result is stored in AX, representing (C * 9).
MOV AX, C    ; Load Celsius value into AX
MOV BX, #9   ; Load constant 9 into BX
MUL BX       ; Multiply AX by BX (AX = C * 9)
# Load the constant value 5 into the CX register and divide AX by CX. The result is stored in AX, representing ((C * 9) / 5).
MOV CX, #5   ; Load constant 5 into CX
DIV CX       ; Divide AX by CX (AX = (C * 9) / 5)
# Load the constant value 32 into the BX register and add it to the value in AX. The result in AX represents the temperature in Fahrenheit.
MOV BX, #32  ; Load constant 32 into BX
ADD AX, BX   ; Add 32 to AX (AX = ((C * 9) / 5) + 32)
MOV f, AX    ; Store the Fahrenheit result in memory location f (2000H)
# Program Termination: The program concludes with an END statement.

# Usage
To use this code, you can assemble it using an 8086 assembler.
The initial Celsius temperature is set using C EQU at the beginning of the program.
The result in Fahrenheit can be retrieved from memory location f (2000H).
This code is a simple example of how to perform temperature conversion in 8086 assembly language. You can modify it or integrate it into a larger program as needed.
Please make sure you have an 8086 assembler and emulator set up to run this code on a compatible system.
