.global _start
.text

_start:
    MOV r0, #18
    ADD r1, r0, #7
    SUB r1, r1, #4

fin:
    B fin