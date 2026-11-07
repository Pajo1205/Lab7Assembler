@ Lee dos numeros y un nombre, luego muestra la suma
.text
    .align 2
    .global main
    .type main, %function

main:
    @@ Guardar registros en la pila
    stmfd sp!, {r4, lr}
    @@ menu
menu:
    ldr r0, =mensaje_menu
    bl printf

    @@ Leer la opcion del usuario
    ldr r0, =entrada_numero
    ldr r1, =opcion
    bl scanf

    @@ Cargar la info que guardamos del usuario en un registro

    @@ Carga el formato de la opcion
    ldr r4, =opcion @@ Carga el  valor guardado en memoria (pero solo el address)
    ldr r0, [r4] @@ Apunta a la direccion de memoria en donde esta mi variable en ram

    cmp r0, #1 @@Me voy a la etiqueta de suma
    beq  suma

    cmp r0, #2 @@me voy a la etiqueta de multiplicacion
    beq  multiplicacion

    cmp r0, #3 @@salgo
    beq  salir


    b menu


suma:
    @@imprimimos el titulo de la operacion
    ldr r0, =mensaje_suma
    bl printf

    @@ Solicitar el primer numero
    ldr r0, =mensaje_operacion_1
    bl printf
    @@scanf del primer numero
    ldr r0, =entrada_numero
    ldr r1, =num1
    bl scanf

    @@ Solicitar el segundo numero
    ldr r0, =mensaje_operacion_2
    bl printf


    @@scanf del segundo numero
    ldr r0, =entrada_numero
    ldr r1, =num2
    bl scanf


    @@ CARGAR LA INFO DE NUM 1 Y NUM 2
    ldr r4, =num1 @@num 1 -> r2
    ldr r2, [r4]

    ldr r4, =num2 @@num 2 -> r3
    ldr r3, [r4]

    @@sumar r2 + r3 -> r1
    add r1, r2, r3


    @@ Imprimir el resultado
    @@ en r0, formato
    @@ r1 va a contener el resultado de la suma

    ldr r0, =formato_resultado
    bl printf


    b menu

multiplicacion:


salir:
    @@ Restaurar registros y retornar
    ldmfd sp!, {r4, lr}
    bx lr

.data
.align 2
mensaje_menu:
    .asciz "Bienvenido a la calculadora \n 1. suma \n 2. multiplicacion \n 3. salir\n"
entrada_numero:
    .asciz "%d"
opcion:
    .word 0
mensaje_suma:
    .asciz "Estamos sumando xd\n"

mensaje_operacion_1:
    .asciz "\nIngrese el primer numero a operar:\n"
mensaje_operacion_2:
    .asciz "\nIngrese el segundo numero a operar>\n"

formato_resultado: 
    .asciz "\nEl resultado es: %d\n"

num1:
    .word 0
num2:
    .word 0
resultado:
    .word 0



nombre:
    .space 50

mensaje_num1:
    .asciz "Ingrese el primer numero:"
mensaje_num2:
    .asciz "Ingrese el segundo numero:"
mensaje_nombre:
    .asciz "Ingrese su nombre:"


entrada_nombre:
    .asciz "%49s"

formato_salida:
    .asciz "%s, tu suma es: %d\n"
