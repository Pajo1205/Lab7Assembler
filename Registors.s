.global _start
.text

_start:
    MOV r0, #12
    MOV r1, #8
    MOV r2, #3

    ADD r4, r0, r1
    MUL r3, r4, r2

fin:
    B fin