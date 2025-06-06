.global Animation_loop

Animation_loop:

	//carga fondo
	add x22, x22, 19
	add x21, x21, 19
	bl fondo
    
	//carga gallina normal
	mov x23, x21 // salvo x21
	mov x21,0
	bl gallina_1
	mov x21, x23 // restauro x21

	movz x0, 0x5F0, lsl 16   // Ajustá según velocidad deseada
	movk x0, 0xFFFF, lsl 00
	bl retardo

	//fondo
	add x22, x22, 19
	add x21, x21, 19
	bl fondo

	//gallina baja con ojos abiertos
	mov x23, x21 // salvo x21
	mov x21, 9
	bl gallina_4
	mov x21, x23 // restauro x21
	movz x0, 0x5F0, lsl 16   // Ajustá según velocidad deseada
	movk x0, 0xFFFF, lsl 00
	bl retardo

	//fondo
	add x22, x22, 19
	add x21, x21, 19
	bl fondo

	//gallina normal con ojos cerrados
	mov x23, x21 // salvo x21
	mov x21, 0
	bl gallina_2
	mov x21, x23 // restauro x21
	movz x0, 0x600, lsl 16   // Ajustá según velocidad deseada
	movk x0, 0xFFFF, lsl 00
	bl retardo

	//fondo
	add x22, x22, 19
	add x21, x21, 19
	bl fondo

	//gallina normal
	mov x23, x21 // salvo x21
	mov x21, 0
	bl gallina_1
	mov x21, x23 // restauro x21
	movz x0, 0x5F0, lsl 16   // Ajustá según velocidad deseada
	movk x0, 0xFFFF, lsl 00
	bl retardo

	//fondo
	add x22, x22, 19
	add x21, x21, 19
	bl fondo

	//gallina baja con ojos abiertos
	mov x23, x21 // salvo x21
	mov x21, 9
	bl gallina_4
	mov x21, x23 // restauro x21
	movz x0, 0x5F0, lsl 16   // Ajustá según velocidad deseada
	movk x0, 0xFFFF, lsl 00
	bl retardo

	//fondo
	add x22, x22, 19
	add x21, x21, 19
	bl fondo

	//gallina normal
	mov x23, x21 // salvo x21
	mov x21, 0
	bl gallina_1
	mov x21, x23 // restauro x21
	movz x0, 0x0F0, lsl 16   // Ajustá según velocidad deseada
	movk x0, 0xFFFF, lsl 00
	bl retardo

	//me fijo si ya volvi a la posicion original (son 5 ciclos)
	sub x24, x24, 1
	cbz x24, espera //si x24 bajo a cero salta a espera mientras la gallina duerme

	//reinicio x20
	mov x0, x20
	b Animation_loop

.global espera
espera:
	mov x0, x20
	bl fondo
	mov x21, 18
	bl gallina_3
	movz x0, 0x50FF, lsl 16   // Ajustá según velocidad deseada
	movk x0, 0xFFFF, lsl 00
	bl retardo
	mov x0, x20
	b reinicio

