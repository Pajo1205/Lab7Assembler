.global _start
.text

_start:
    MVN r0, #0
    MOV r1, #1

    @ Comparacion con signo
    CMP r0, r1
    BGT mayor_con_signo

    MOV r2, #0
    B comparar_sin_signo

mayor_con_signo:
    MOV r2, #1

comparar_sin_signo:
    CMP r0, r1
    BHI mayor_sin_signo

    MOV r3, #0
    B fin

mayor_sin_signo:
    MOV r3, #1

fin:
    B fin