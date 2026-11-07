@ Hello World utilizando printf

    .text
    .align 2
    .global main
    .type main, %function

main:
    @@ Guardar registros en la pila
    stmfd sp!, {r4, lr}

    @@ Mostrar mensaje
    ldr r0,=mensaje
    bl printf

    @@ Retornar cero al sistema operativo
    mov r0,#0

    @@ Restaurar registros y retornar
    ldmfd sp!, {r4, lr}
    bx lr

.data
mensaje:
    .asciz "Hello World!\n"

.section .note.GNU-stack,"",%progbits