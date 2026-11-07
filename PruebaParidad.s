.global _start
.text

_start:
    MOV r0, #14
    TST r0, #1
    BEQ par

impar:
    MOV r1, #0
    B fin

par:
    MOV r1, #1

fin:
    B fin