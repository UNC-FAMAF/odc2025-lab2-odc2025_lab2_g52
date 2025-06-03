.equ SCREEN_WIDTH, 640
.global gallina

//------------- COLORES -----------------//
.equ NARANJA,          0xF75102
.equ ROJO,             0xD02239
.equ CREMA,            0xFEE0A9
.equ BEIGE,            0xE0AE7B
.equ MARRON,           0x713A1B
.equ MARRON_CLARO,     0xA25A05
.equ AMARILLO,         0xF9CF3E
.equ AMARILLO_OSCURO,  0xE2A941
//----------------------------------------//

gallina:

stp x29, x30, [sp, #-16]!   //guardar frame pointer y link register

//------- RELLENO --------//

ldr x10, =NARANJA
mov x6, SCREEN_WIDTH		//guarda ancho pantalla

mov x4, 113					//guarda fila
mov x5, 284 				//guarda columna
mov x7, 37 				    //guarda alto rectangulo
mov x8, 18					//guarda ancho rectangulo
bl rectangulo

mov x4, 113					//guarda fila
mov x5, 302 				//guarda columna
mov x7, 18 				    //guarda alto rectangulo
mov x8, 18					//guarda ancho rectangulo
bl rectangulo

ldr x10, =ROJO

mov x4, 113					//guarda fila
mov x5, 320 				//guarda columna
mov x7, 18 				    //guarda alto rectangulo
mov x8, 18					//guarda ancho rectangulo
bl rectangulo

mov x4, 132					//guarda fila
mov x5, 266 				//guarda columna
mov x7, 18 				    //guarda alto rectangulo
mov x8, 18					//guarda ancho rectangulo
bl rectangulo

ldr x10, =CREMA

mov x4, 149					//guarda fila
mov x5, 247 				//guarda columna
mov x7, 38 				    //guarda alto rectangulo
mov x8, 74					//guarda ancho rectangulo
bl rectangulo

mov x4, 185					//guarda fila
mov x5, 265 				//guarda columna
mov x7, 38 				//guarda alto rectangulo
mov x8, 183					//guarda ancho rectangulo
bl rectangulo

mov x4, 222					//guarda fila
mov x5, 247 				//guarda columna
mov x7, 36 				    //guarda alto rectangulo
mov x8, 182					//guarda ancho rectangulo
bl rectangulo

mov x4, 222					//guarda fila
mov x5, 212 				//guarda columna
mov x7, 90 				    //guarda alto rectangulo
mov x8, 236					//guarda ancho rectangulo
bl rectangulo

mov x4, 312					//guarda fila
mov x5, 229 				//guarda columna
mov x7, 38 				    //guarda alto rectangulo
mov x8, 200					//guarda ancho rectangulo
bl rectangulo

ldr x10, =BEIGE

mov x4, 149					//guarda fila
mov x5, 284 				//guarda columna
mov x7, 18 				    //guarda alto rectangulo
mov x8, 37					//guarda ancho rectangulo
bl rectangulo

mov x4, 167					//guarda fila
mov x5, 229 				//guarda columna
mov x7, 37 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 167					//guarda fila
mov x5, 320 				//guarda columna
mov x7, 38 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 186					//guarda fila
mov x5, 375 				//guarda columna
mov x7, 18 				    //guarda alto rectangulo
mov x8, 18					//guarda ancho rectangulo
bl rectangulo

mov x4, 203					//guarda fila
mov x5, 356 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 204					//guarda fila
mov x5, 411 				//guarda columna
mov x7, 18 				    //guarda alto rectangulo
mov x8, 37					//guarda ancho rectangulo
bl rectangulo

mov x4, 240					//guarda fila
mov x5, 429 				//guarda columna
mov x7, 37 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 240					//guarda fila
mov x5, 392 				//guarda columna
mov x7, 55 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 258					//guarda fila
mov x5, 374 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 222					//guarda fila
mov x5, 338 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 240					//guarda fila
mov x5, 302 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 240					//guarda fila
mov x5, 320 				//guarda columna
mov x7, 37 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 204					//guarda fila
mov x5, 265 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 222					//guarda fila
mov x5, 247 				//guarda columna
mov x7, 18 				    //guarda alto rectangulo
mov x8, 18					//guarda ancho rectangulo
bl rectangulo

mov x4, 240					//guarda fila
mov x5, 229 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 240					//guarda fila
mov x5, 193 				//guarda columna
mov x7, 73 				    //guarda alto rectangulo
mov x8, 37					//guarda ancho rectangulo
bl rectangulo

mov x4, 276					//guarda fila
mov x5, 229 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 276					//guarda fila
mov x5, 265 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 294					//guarda fila
mov x5, 247 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 294					//guarda fila
mov x5, 284 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 313					//guarda fila
mov x5, 229 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 331					//guarda fila
mov x5, 247 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 331					//guarda fila
mov x5, 284 				//guarda columna
mov x7, 18 				    //guarda alto rectangulo
mov x8, 18					//guarda ancho rectangulo
bl rectangulo

mov x4, 331					//guarda fila
mov x5, 320 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 18					//guarda ancho rectangulo
bl rectangulo

mov x4, 331					//guarda fila
mov x5, 356 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 38					//guarda ancho rectangulo
bl rectangulo

mov x4, 312					//guarda fila
mov x5, 392 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

//--------------- CONTORNO ------------------//

ldr x10, =MARRON
mov x4, 94					//guarda fila
mov x5, 283					//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 74					//guarda ancho rectangulo
bl rectangulo

mov x4, 113					//guarda fila
mov x5, 265					//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 131					//guarda fila
mov x5, 248					//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 149					//guarda fila
mov x5, 230 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 167					//guarda fila
mov x5, 211 				//guarda columna
mov x7, 37 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 204					//guarda fila
mov x5, 193 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 222					//guarda fila
mov x5, 211 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 240					//guarda fila
mov x5, 193 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 258					//guarda fila
mov x5, 175 				//guarda columna
mov x7, 55 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 312					//guarda fila
mov x5, 193 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 330					//guarda fila
mov x5, 211 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 349					//guarda fila
mov x5, 229 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 38					//guarda ancho rectangulo
bl rectangulo

mov x4, 367					//guarda fila
mov x5, 211 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 367					//guarda fila
mov x5, 283 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 349					//guarda fila
mov x5, 320 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 37					//guarda ancho rectangulo
bl rectangulo

mov x4, 367					//guarda fila
mov x5, 356 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 349					//guarda fila
mov x5, 374 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 38					//guarda ancho rectangulo
bl rectangulo

mov x4, 312					//guarda fila
mov x5, 411 				//guarda columna
mov x7, 38 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 276					//guarda fila
mov x5, 429 				//guarda columna
mov x7, 37 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 240					//guarda fila
mov x5, 447 				//guarda columna
mov x7, 37 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 222					//guarda fila
mov x5, 429 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 185					//guarda fila
mov x5, 447 				//guarda columna
mov x7, 37 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 167					//guarda fila
mov x5, 374 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 74					//guarda ancho rectangulo
bl rectangulo

mov x4, 185					//guarda fila
mov x5, 356 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 167					//guarda fila
mov x5, 338 				//guarda columna
mov x7, 55 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 131					//guarda fila
mov x5, 320 				//guarda columna
mov x7, 37 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 131					//guarda fila
mov x5, 302 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 113					//guarda fila
mov x5, 338 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

ldr x10, =MARRON_CLARO

mov x4, 222					//guarda fila
mov x5, 228 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 312					//guarda fila
mov x5, 211 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 330					//guarda fila
mov x5, 229 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 349					//guarda fila
mov x5, 266 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 54					//guarda ancho rectangulo
bl rectangulo

mov x4, 349					//guarda fila
mov x5, 356 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 330					//guarda fila
mov x5, 392 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 294					//guarda fila
mov x5, 411 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

ldr x10, =AMARILLO

mov x4, 204					//guarda fila
mov x5, 211 				//guarda columna
mov x7, 18 				    //guarda alto rectangulo
mov x8, 55					//guarda ancho rectangulo
bl rectangulo

mov x4, 367					//guarda fila
mov x5, 229 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 36					//guarda ancho rectangulo
bl rectangulo

mov x4, 367					//guarda fila
mov x5, 320 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 36					//guarda ancho rectangulo
bl rectangulo

ldr x10, =AMARILLO_OSCURO

mov x4, 367					//guarda fila
mov x5, 265 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 367					//guarda fila
mov x5, 302 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

//--------------- OJOS Y ALA ---------------//

ldr x10, =MARRON

mov x4, 167					//guarda fila
mov x5, 247 				//guarda columna
mov x7, 37 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 167					//guarda fila
mov x5, 302 				//guarda columna
mov x7, 55 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 258					//guarda fila
mov x5, 338 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

mov x4, 276					//guarda fila
mov x5, 356 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 37					//guarda ancho rectangulo
bl rectangulo

mov x4, 258					//guarda fila
mov x5, 392 				//guarda columna
mov x7, 19 				    //guarda alto rectangulo
mov x8, 19					//guarda ancho rectangulo
bl rectangulo

//------------------------------------------//

ldp x29, x30, [sp], #16     // Restaura frame pointer y link register

ret
