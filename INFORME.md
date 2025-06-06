Nombre y apellido 
Integrante 1: David Sebastian Cortés
Integrante 2: Dante Valentin Romano
Integrante 3: Agustin Reyes Caumo
Integrante 4: Joaquin Sanchez


Descripción ejercicio 1: 

En este primer ejercicio decidimos dibujar una gallina como figura principal sobre un fondo, utilizando figuras básicas parametrizadas como rectángulos y círculos, ocupando asi todo la pantalla. Se puede notar el uso de  varios colores: blanco, rojo, negro, amarillo, distintos marrones y violeta. La inscripción OdC 2025 esta bastante integrada, quizas cueste encontrarlo. 

Descripción ejercicio 2:

En este ejercicio se reutilizó el código del ejercicio anterior al cual se le realizaron modificaciones para cumplir con los requisitos del ejercicio 2. Se puede ver el movimiento de la gallina cuando "camina" por el fondo o cuando se detiene a descansar. Además, el fondo deja de ser estático y también presenta movimiento. La secuencia queda en un bucle mediante el llamado de Animation_loop.


Justificación instrucciones ARMv8:

1. stp: Lo usamos para guardar el contexto de la subrutina, específicamente el frame pointer (x29) y el link register (x30) en memoria estática, al entrar a subrutinas como gallina y fondo.
    
2. ldp: Lo usamos para traer de la memoria estática lo que guardamos previamente al salir de la subrutina.
