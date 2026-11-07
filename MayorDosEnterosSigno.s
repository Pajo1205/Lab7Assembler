.global _start
.text

_start:
    MOV r0, #25
    MOV r1, #40

    CMP r0, r1
    BGT mayor_r0
    BEQ iguales

mayor_r1:
    MOV r2, r1
    B fin

mayor_r0:
    MOV r2, r0
    B fin

iguales:
    MOV r2, r0

fin:
    B fin