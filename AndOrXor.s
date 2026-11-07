.global _start
.text

_start:
    MOV r0, #0xAC
    MOV r1, #0xCA

    AND r2, r0, r1
    ORR r3, r0, r1
    EOR r4, r0, r1

fin:
    B fin