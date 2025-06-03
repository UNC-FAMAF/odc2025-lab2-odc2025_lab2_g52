.equ SCREEN_WIDTH, 640
.global rectangulo
.global circulo

rectangulo:

	// Agregamos esto
	mov x0, x20          // restaurar framebuffer pointer

	mul x4, x4, x6      // fila * ancho pantalla
	add x4, x4, x5      // + columna
	lsl x4, x4, 2       // * 4 bytes por píxel
	add x0, x20, x4     // x0 = puntero al píxel (50,100)

	// Ancho y alto del rectangulo
	mov x2, x7         //inicializa Alto (filas)
	loop1_sq:
		mov x1, x8     //inicializa Ancho (columnas)
	loop0_sq:
		stur w10,[x0]   // Escribir píxel
		add x0,x0,4     // Siguiente píxel
		sub x1,x1,1
		cbnz x1, loop0_sq

		// Al final de cada fila, avanzar al principio de la próxima fila:
		// Necesitamos saltar el resto de los píxeles de esa fila:
		// Avanzamos (SCREEN_WIDTH - rectangulo_width) * 4 bytes
		mov x3, x6     // SCREEN_WIDTH
		sub x3, x3, x8
		lsl x3, x3, 2
		add x0, x0, x3

		sub x2, x2, 1
		cbnz x2, loop1_sq
		ret



circulo:
// x0 = pixel a pintar
// x1 = centroY
// x2 = centroX
// x3 = radio
// x4 = radio^2
// x5 = y_actual
// x6 = y_end
// x7 = x_start
// x8 = screen_width
// x9 = x_end
// x10 = color

mul x4, x3, x3        // x4 = radio^2

sub x5, x1, x3        // x5 = y_start
add x6, x1, x3        // x6 = y_end

loop_y:
    cmp x5, x6
    bgt end_loop_y

    sub x14, x5, x1     // x14 = dy
    mul x14, x14, x14   // x14 = dy^2

    sub x7, x2, x3      // x7 = x_start
    add x9, x2, x3      // x9 = x_end

    mov x11, x7         // x11 = x_actual

loop_x:
    cmp x11, x9
    bgt end_loop_x

    sub x12, x11, x2    // dx = x - centroX
    mul x12, x12, x12   // dx^2
    add x12, x12, x14   // dx^2 + dy^2

    cmp x12, x4
    bgt skip_pixel

    // calcular dirección del píxel
    mul x13, x8, x5     // fila * ancho
    add x13, x13, x11   // + columna
    lsl x13, x13, 2     // * 4 bytes por pixel
    add x0, x20, x13
    stur w10, [x0]      // pintar

skip_pixel:
    add x11, x11, 1
    b loop_x

end_loop_x:
    add x5, x5, 1
    b loop_y

end_loop_y:
    ret




