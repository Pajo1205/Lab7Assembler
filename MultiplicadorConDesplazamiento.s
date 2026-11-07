.global _start
.text

_start:
    MOV r0, #7
    ADD r1, r0, r0, LSL #2

fin:
    B fin