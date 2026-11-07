.global _start
.text

_start:
    MOV r0, #0x2A

    ORR r0, r0, #1     @ Activa bit 0: r0 = 0x2B
    BIC r0, r0, #8     @ Limpia bit 3: r0 = 0x23
    EOR r0, r0, #32    @ Invierte bit 5: r0 = 0x03

fin:
    B fin