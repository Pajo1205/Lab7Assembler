.global _start
.text

_start:
    MOV r0, #48
    LSR r1, r0, #1
    LSL r2, r0, #2

fin:
    B fin