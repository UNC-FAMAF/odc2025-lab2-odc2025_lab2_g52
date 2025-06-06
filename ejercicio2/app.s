	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

	.global main
	.global reinicio
main:
	// x0 contiene la direccion base del framebuffer
 	mov x20, x0	// Guarda la dirección base del framebuffer en x20
	//------------------------- CODE HERE ---------------------------
	reinicio:
		mov x24, 6
		mov x21, 0
		mov x22, 0
		bl Animation_loop
	//---------------------------------------------------------------
	