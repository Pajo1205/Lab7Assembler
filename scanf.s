@ Lee dos numeros y un nombre, luego muestra la suma

    .text
    .align 2
    .global main
    .type main, %function

main:
    @@ Guardar registros en la pila
    stmfd sp!, {r4, lr}

    @@ Leer primer numero
    ldr r0,=mensaje_num1
    bl puts

    ldr r0,=entrada_numero
    ldr r1,=num1
    bl scanf

    @@ Leer segundo numero
    ldr r0,=mensaje_num2
    bl puts

    ldr r0,=entrada_numero
    ldr r1,=num2
    bl scanf

    @@ Leer nombre
    ldr r0,=mensaje_nombre
    bl puts

    ldr r0,=entrada_nombre
    ldr r1,=nombre
    bl scanf

    @@ Cargar los valores de ambos numeros
    ldr r4,=num1
    ldr r1,[r4]

    ldr r4,=num2
    ldr r2,[r4]

    @@ Sumar y guardar el resultado
    add r3,r1,r2
    ldr r4,=suma
    str r3,[r4]

    @@ Mostrar: nombre + "tu suma es:" + resultado
    ldr r0,=formato_salida
    ldr r1,=nombre
    ldr r4,=suma
    ldr r2,[r4]
    bl printf

    @@ Retornar cero al sistema operativo
    mov r3,#0
    mov r0,r3

    @@ Restaurar registros y retornar
    ldmfd sp!, {r4, lr}
    bx lr

.data
.align 2

num1:
    .word 0
num2:
    .word 0
suma:
    .word 0

nombre:
    .space 50

mensaje_num1:
    .asciz "Ingrese el primer numero:"
mensaje_num2:
    .asciz "Ingrese el segundo numero:"
mensaje_nombre:
    .asciz "Ingrese su nombre:"

entrada_numero:
    .asciz "%d"
entrada_nombre:
    .asciz "%49s"

formato_salida:
    .asciz "%s, tu suma es: %d\n"

