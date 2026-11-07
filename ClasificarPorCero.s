.global _start
.text

_start:
    MOV r0, #0

    CMP r0, #0
    BEQ cero
    BGT positivo

negativo:
    MOV r1, #2
    B fin

cero:
    MOV r1, #0
    B fin

positivo:
    MOV r1, #1

fin:
    B fin