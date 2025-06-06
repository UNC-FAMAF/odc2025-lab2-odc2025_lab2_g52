	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

	.equ GPIO_BASE,      0x3f200000
	.equ GPIO_GPFSEL0,   0x00
	.equ GPIO_GPLEV0,    0x34

	.global fondo
	.global fondo2

fondo:

//------------- COLORES -----------------//
    .equ MARRON_CLARO, 0xb06803
	.equ MARRON_CLARO_ODC, 0xc37b03
    .equ AMARILLO, 0xfdd604
	.equ AMARILLO_ODC, 0xfdc204
    .equ MEZCLA, 0xcc8a00
	.equ MEZCLA_ODC, 0xcc8a41
	.equ MARRON_SOMBRA, 0x4d2e1d
	.equ AMARILLO_SOMBRA, 0x5f4119
//----------------------------------------//
stp x29, x30, [sp, #-16]! //guardar frame pointer y link register
mov x6, SCREEN_WIDTH //guarda ancho pantalla

//Pinto el fondo de marrón oscuro// 
ldr x10, =0x884302
mov x4, 0					//guarda fila
mov x5, 0 				//guarda columna
mov x7, 480 				    //guarda alto rectangulo
mov x8, 640					//guarda ancho rectangulo
add x5, x5, x21
bl rectangulo

//Pinto el borde violeta//
ldr x10, =0x46344f
mov x4, 0					//guarda fila
mov x5, 0 				//guarda columna
mov x7, 33 				    //guarda alto rectangulo
mov x8, 640					//guarda ancho rectangulo
add x5, x5, x21
bl rectangulo

//Pinto los cuadros negros 
ldr x10, =0x2c2624
mov x4, 0					//guarda fila
mov x5, 51 				//guarda columna
mov x7, 10 				    //guarda alto rectangulo
mov x8, 24					//guarda ancho rectangulo
add x5, x5, x21
bl rectangulo

ldr x10, =0x2c2624
mov x4, 0					//guarda fila
mov x5, 143 				//guarda columna
mov x7, 10 				    //guarda alto rectangulo
mov x8, 24					//guarda ancho rectangulo
add x5, x5, x21
bl rectangulo

ldr x10, =0x2c2624
mov x4, 0					//guarda fila
mov x5, 237 				//guarda columna
mov x7, 10 				    //guarda alto rectangulo
mov x8, 24					//guarda ancho rectangulo
add x5, x5, x21
bl rectangulo

ldr x10, =0x2c2624
mov x4, 0					//guarda fila
mov x5, 329 				//guarda columna
mov x7, 10 				    //guarda alto rectangulo
mov x8, 24					//guarda ancho rectangulo
add x5, x5, x21
bl rectangulo

ldr x10, =0x2c2624
mov x4, 0					//guarda fila
mov x5, 424 				//guarda columna
mov x7, 10 				    //guarda alto rectangulo
mov x8, 24					//guarda ancho rectangulo
add x5, x5, x21
bl rectangulo

ldr x10, =0x2c2624
mov x4, 0					//guarda fila
mov x5, 519 				//guarda columna
mov x7, 10 				    //guarda alto rectangulo
mov x8, 24					//guarda ancho rectangulo
add x5, x5, x21
bl rectangulo

ldr x10, =0x2c2624
mov x4, 0					//guarda fila
mov x5, 611 				//guarda columna
mov x7, 10 				    //guarda alto rectangulo
mov x8, 24					//guarda ancho rectangulo
add x5, x5, x21
bl rectangulo

ldr x10, =0x2c2624
mov x4, 33					//guarda fila
mov x5, 0 			    	//guarda columna
mov x7, 20 				    //guarda alto rectangulo
mov x8, 640					//guarda ancho rectangulo
add x5, x5, x21
bl rectangulo

mov x1, xzr
mov x3, xzr
mov x2, xzr

//pinto los circulos negros//
ldr x10, =0x2c2624
mov x1, 21 //centro Y
mov x2, 62 //centro X
mov x3, 10 //radio
mov x8, SCREEN_WIDTH
add x2, x2, x22
bl circulo

ldr x10, =0x2c2624
mov x1, 21 //centro Y
mov x2, 154 //centro X
mov x3, 10 //radio
mov x8, SCREEN_WIDTH
add x2, x2, x22
bl circulo

ldr x10, =0x2c2624
mov x1, 21 //centro Y
mov x2, 248 //centro X
mov x3, 10 //radio
mov x8, SCREEN_WIDTH
add x2, x2, x22
bl circulo

ldr x10, =0x2c2624
mov x1, 21 //centro Y
mov x2, 340 //centro X
mov x3, 10 //radio
mov x8, SCREEN_WIDTH
add x2, x2, x22
bl circulo

ldr x10, =0x2c2624
mov x1, 21 //centro Y
mov x2, 435 //centro X
mov x3, 10 //radio
mov x8, SCREEN_WIDTH
add x2, x2, x22
bl circulo

ldr x10, =0x2c2624
mov x1, 21 //centro Y
mov x2, 530 //centro X
mov x3, 10 //radio
mov x8, SCREEN_WIDTH
add x2, x2, x22
bl circulo

ldr x10, =0x2c2624
mov x1, 21 //centro Y
mov x2, 622 //centro X
mov x3, 10 //radio
mov x8, SCREEN_WIDTH
add x2, x2, x22
bl circulo


mov x6, SCREEN_WIDTH //guarda ancho pantalla

//Pinto la parte sombreada sombra//
ldr x10, =MARRON_SOMBRA
mov x5, 0 				    //guarda columna
mov x4, 53					//guarda fila
mov x8, 640					//guarda ancho rectangulo
mov x7, 48 				    //guarda alto rectangulo
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_SOMBRA
mov x5, 24 				    //guarda columna
mov x4, 53					//guarda fila
mov x8, 24					//guarda ancho rectangulo
mov x7, 24 				    //guarda alto rectangulo
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_SOMBRA
mov x5, 72 				    //guarda columna
mov x4, 77					//guarda fila
mov x8, 72					//guarda ancho rectangulo
mov x7, 24 				    //guarda alto rectangulo
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_SOMBRA
mov x5, 192 				    //guarda columna
mov x4, 77					//guarda fila
mov x8, 24					//guarda ancho rectangulo
mov x7, 24 				    //guarda alto rectangulo
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_SOMBRA
mov x5, 216 				    //guarda columna
mov x4, 53					//guarda fila
mov x8, 120					//guarda ancho rectangulo
mov x7, 24 				    //guarda alto rectangulo
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_SOMBRA
mov x5, 360 				    //guarda columna
mov x4, 53					//guarda fila
mov x8, 24					//guarda ancho rectangulo
mov x7, 48 				    //guarda alto rectangulo
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_SOMBRA
mov x5, 408 				    //guarda columna
mov x4, 53					//guarda fila
mov x8, 24					//guarda ancho rectangulo
mov x7, 24 				    //guarda alto rectangulo
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_SOMBRA
mov x5, 456 				    //guarda columna
mov x4, 77					//guarda fila
mov x8, 72					//guarda ancho rectangulo
mov x7, 24 				    //guarda alto rectangulo
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_SOMBRA
mov x5, 576 				    //guarda columna
mov x4, 77					//guarda fila
mov x8, 24					//guarda ancho rectangulo
mov x7, 24 				    //guarda alto rectangulo
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_SOMBRA
mov x5, 600 	//X
mov x4, 53		//Y
mov x8, 40		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

//Pinto la parte no sombreada//
ldr x10, =MARRON_CLARO
mov x5, 0 	//X
mov x4, 101		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 120 	//X
mov x4, 101		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 168 	//X
mov x4, 101		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 360 	//X
mov x4, 101		//Y
mov x8, 72		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 240 	//X
mov x4, 101		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 288 	//X
mov x4, 101		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 312 	//X
mov x4, 125		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 48 	//X
mov x4, 125		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 96 	//X
mov x4, 125		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 144 	//X
mov x4, 125		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 168 	//X
mov x4, 125		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 24 	//X
mov x4, 149		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 96 	//X
mov x4, 149		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 0 	//X
mov x4, 173		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 72 	//X
mov x4, 173		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 120 	//X
mov x4, 173		//Y
mov x8, 72		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 0 	//X
mov x4, 197		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 120 	//X
mov x4, 197		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 144 	//X
mov x4, 197		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 0 	//X
mov x4, 269		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo


ldr x10, =AMARILLO
mov x5, 24 	//X
mov x4, 269		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 120 	//X
mov x4, 269		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 144 	//X
mov x4, 245		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 144 	//X
mov x4, 317		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 144 	//X
mov x4, 221		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO	
mov x5, 120 	//X
mov x4, 341		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO	
mov x5, 144 	//X
mov x4, 365		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO	
mov x5, 00 	//X
mov x4, 341		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO	
mov x5, 24 	//X
mov x4, 341		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA	
mov x5, 24 	//X
mov x4, 365		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO	
mov x5, 0 	//X
mov x4, 461		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA	
mov x5, 120 	//X
mov x4, 461		//Y
mov x8, 72		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO	
mov x5, 144 	//X
mov x4, 413		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO	
mov x5, 144 	//X
mov x4, 389		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO	
mov x5, 120 	//X
mov x4, 389		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 48 	//X
mov x4, 389		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO	
mov x5, 216 	//X
mov x4, 413		//Y
mov x8, 24		//size X
mov x7, 72 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 240 	//X
mov x4, 461		//Y
mov x8, 72		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 264 	//X
mov x4, 413		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 288 	//X
mov x4, 437		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 240 	//X
mov x4, 437		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 240 	//X
mov x4, 365		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 240 	//X
mov x4, 365		//Y
mov x8, 120		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 288 	//X
mov x4, 365		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 336 	//X
mov x4, 365		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 312 	//X
mov x4, 413		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 192 	//X
mov x4, 365		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 360 	//X
mov x4, 437		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 408 	//X
mov x4, 389		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 408 	//X
mov x4, 461		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 384 	//X
mov x4, 389		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 432 	//X
mov x4, 365		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 456 	//X
mov x4, 389		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 432 	//X
mov x4, 437		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 456 	//X
mov x4, 365		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 408 	//X
mov x4, 317		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 432 	//X
mov x4, 317		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 432 	//X
mov x4, 293		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 456 	//X
mov x4, 269		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 432 	//X
mov x4, 221		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 456 	//X
mov x4, 221		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 480 	//X
mov x4, 149		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 432 	//X
mov x4, 149		//Y
mov x8, 48		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 408 	//X
mov x4, 149		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 408 	//X
mov x4, 149		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 360 	//X
mov x4, 149		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 600 	//X
mov x4, 173		//Y
mov x8, 40		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 624 	//X
mov x4, 269		//Y
mov x8, 16		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 576 	//X
mov x4, 269		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 576 	//X
mov x4, 365		//Y
mov x8, 64		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 312 	//X
mov x4, 245		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 264 	//X
mov x4, 221		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 240 	//X
mov x4, 221		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 264 	//X
mov x4, 245		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 288 	//X
mov x4, 293		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 288 	//X
mov x4, 317		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 312 	//X
mov x4, 317		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 264 	//X
mov x4, 317		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 216 	//X
mov x4, 293		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 336 	//X
mov x4, 293		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 384 	//X
mov x4, 293		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO
mov x5, 360 	//X
mov x4, 341		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 240 	//X
mov x4, 197		//Y
mov x8, 72		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 240 	//X
mov x4, 197		//Y
mov x8, 72		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 336 	//X
mov x4, 221		//Y
mov x8, 72		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA
mov x5, 336 	//X
mov x4, 221		//Y
mov x8, 72		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO
mov x5, 216 	//X
mov x4, 173		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

//Pinto ODC 2025//
//------------------------------O------------------------------//
ldr x10, =MEZCLA_ODC
mov x5, 24 	//X
mov x4, 197		//Y
mov x8, 96		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO_ODC
mov x5, 24 	//X
mov x4, 245		//Y
mov x8, 96		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_ODC
mov x5, 24 	//X
mov x4, 245		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO_ODC
mov x5, 24 	//X
mov x4, 221		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO_ODC
mov x5, 96 	//X
mov x4, 221		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

//------------------------------D------------------------------// 
ldr x10, =MARRON_CLARO_ODC
mov x5, 24 	//X
mov x4, 293		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_ODC
mov x5, 96 	//X
mov x4, 293		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA_ODC
mov x5, 96 	//X
mov x4, 317		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA_ODC
mov x5, 48 	//X
mov x4, 293		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO_ODC
mov x5, 48 	//X
mov x4, 341		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

//------------------------------C------------------------------//
ldr x10, =MEZCLA_ODC
mov x5, 24 	//X
mov x4, 413		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO_ODC
mov x5, 24 	//X
mov x4, 437		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA_ODC
mov x5, 96 	//X
mov x4, 413		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO_ODC
mov x5, 96 	//X
mov x4, 437		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

//------------------------------2------------------------------//
ldr x10, =MARRON_CLARO_ODC
mov x5, 504 		//X
mov x4, 101		//Y
mov x8, 24		//size X
mov x7, 72 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO_ODC
mov x5, 552 	//X
mov x4, 101		//Y
mov x8, 24		//size X
mov x7, 72 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO_ODC
mov x5, 600 	//X
mov x4, 101		//Y
mov x8, 24		//size X
mov x7, 72 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_ODC
mov x5, 528 	//X
mov x4, 101		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA_ODC
mov x5, 576 	//X
mov x4, 149		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_ODC
mov x5, 600 	//X
mov x4, 149		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA_ODC
mov x5, 600 	//X
mov x4, 125		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo
//------------------------------0------------------------------//
ldr x10, =MARRON_CLARO_ODC
mov x5, 504  	//X
mov x4, 197		//Y
mov x8, 120		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO_ODC
mov x5, 504  	//X
mov x4, 245		//Y
mov x8, 120		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO_ODC
mov x5, 504  	//X
mov x4, 221		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_ODC
mov x5, 600 	//X
mov x4, 221		//Y
mov x8, 24		//size X
mov x7, 48 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA_ODC
mov x5, 576 	//X
mov x4, 197		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA_ODC
mov x5, 552 	//X
mov x4, 245		//Y
mov x8, 48		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo
//------------------------------2------------------------------//
ldr x10, =MARRON_CLARO_ODC
mov x5, 600 	//X
mov x4, 293		//Y
mov x8, 24		//size X
mov x7, 72 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_ODC
mov x5, 600 	//X
mov x4, 317		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA_ODC
mov x5, 600 	//X
mov x4, 341		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA_ODC
mov x5, 576 	//X
mov x4, 341		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO_ODC
mov x5, 552 	//X
mov x4, 293		//Y
mov x8, 24		//size X
mov x7, 72 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_ODC
mov x5, 528 	//X
mov x4, 293		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO_ODC
mov x5, 504 	//X
mov x4, 293		//Y
mov x8, 24		//size X
mov x7, 72 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA_ODC
mov x5, 504 	//X
mov x4, 293		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA_ODC
mov x5, 504 	//X
mov x4, 317		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo
//------------------------------5------------------------------//
ldr x10, =MARRON_CLARO_ODC
mov x5, 600 	//X
mov x4, 389		//Y
mov x8, 24		//size X
mov x7, 72 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO_ODC
mov x5, 552 	//X
mov x4, 389		//Y
mov x8, 24		//size X
mov x7, 72 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MARRON_CLARO_ODC
mov x5, 504 	//X
mov x4, 389		//Y
mov x8, 24		//size X
mov x7, 72 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_ODC
mov x5, 504 	//X
mov x4, 389		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA_ODC
mov x5, 504 	//X
mov x4, 413		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_ODC
mov x5, 528 	//X
mov x4, 437		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA_ODC
mov x5, 552 	//X
mov x4, 437		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =AMARILLO_ODC
mov x5, 576 	//X
mov x4, 389		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldr x10, =MEZCLA_ODC
mov x5, 552 	//X
mov x4, 389		//Y
mov x8, 24		//size X
mov x7, 24 	    //size Y
add x5, x5, x21
bl rectangulo

ldp x29, x30, [sp], #16
ret

