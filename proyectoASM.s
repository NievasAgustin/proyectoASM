.text
.align 2
.global miMain
.type miMain, %function
.extern arbol


miMain: // X0 pixels
		mov		x10, x0			//  BackUp pixels address
		mov		x15, x1			//  BackUp control
		
        movz    x9, #40
        movz    x11, #160
        movz    x12, #120
        movz    x13, #80
        
        
		
miMain_loop:

        movz     x8, 40                 //Limites a los que responde el rectangulo marron con las demas figuras, de tal manera que se reduce a una linea de 1 ṕixel
        cmp     x11, #60 
        b.gt    fondo
        cmp     x12, #100
        b.gt    fondo
        movz     x8, 1
        
        
fondo:        
// Pinta Fondo llamando a la funcion de cuadrados pero con tamanio de toda nuestra pantalla
        mov     x0, x10
        mov     x1, 0
        movz    x2, 0
        movz    x3, 320
        movz    x4, 240
        
		movz	w5, 0x0aa0			// 0x00000aa0
		movk	w5, 0xffff, lsl 16	// x5 = color = 0xff000aa0
        bl      pintar_rectangulo_color
        
        
        mov     x0, x10                             //Rectangulo independiente hasta que el alguna figura se superponga a los limites marcados anteriormente
        mov     x1, 20
        movz    x2, 20
        mov     x3, x8
        movz    x4, 80
        

        
		movz	w5, 0xa00a			// 0x0000a00a
		movk	w5, 0xffff, lsl 16	// x5 = color = 0xffaaa00a

        bl      pintar_rectangulo_color
 
        
        
//miAumentar:                                       //Boton "A"  para aumentar el tamanio del cubo azul

        ldrb    w7,[x15, #4]
        cmp     w7, #1
        b.ne    miSmall
        add     x13,x13,1
        
miSmall:                                            //Boton "S" para disminuir el tamanio del cubo azul
        ldrb    w7, [x15,#5]
        cmp     w7, #1
        b.ne    miIzquierda
        sub     x13,x13,1
        
miIzquierda:                                    //las siguientes etiquetas funcionan como interrupcion cuando se aprietan las teclas de flecha del teclado
        ldrb    w7, [x15,#0]                    //Funcionan acorde a las direcciones en el cubo azul, pero esta inertido las direcciones en la linea individual
        cmp     w7, #1
        b.ne    miDerecha
        sub     x11, x11, #1
        
 miDerecha:       
        ldrb    w7, [x15,#1] 
        cmp     w7, #1
        b.ne    miAbajo
        add     x11, x11, #1

        
miAbajo:        
        ldrb    w7, [x15, #3]
        cmp     w7, #1
        b.ne    miArriba
        add     x12,x12,1
        
miArriba:
        ldrb    w7,[x15, #2]
        cmp     w7, #1
        b.ne    miMain_tecla_end
        sub     x12,x12,1        
        
miMain_tecla_end:     

                                    
        mov     x0, x10
        mov     x1, x11
        mov     x2, x12
        mov     x3, x13
        mov     x4, x13
        
		movz	w5, 0x00ff			// 0x00000aa0
		movk	w5, 0xff00, lsl 16	// w2 = color = 0xffff0aa0
        bl      pintar_rectangulo_color

 		movz	w5, 0xff00			// 0x00000aa0
		movk	w5, 0xffff, lsl 16	// w2 = color = 0xffffff00      
        mov     x0, x10
        mov     x1, x12
        add     x1,x1, 50
        mov     x2, x11
        add     x2,x2,50
        bl      pintar_linea
        
   

miMain_wait: 							//wait for frame

        ldrb	w7, [x15, #8]
		subs	wzr, w7, #1
        b.ne	miMain_wait
		mov		w7, #0
		strb	w7,[x15, #8]
		b		miMain_loop
		


/*
    x0  direccion de pantalla
    x1  columna de pantalla
    x2  fila de pantalla
    x3  ancho
    x4  alto
    x5  color
*/
pintar_rectangulo_color:
        
        sub     sp, sp ,32
        str     x29,[sp, 16]
        str     x30,[sp, 8]
        str     x6,[sp, 0]
        
        movz    x6, 0x500   // 320 x 4 = 1280 = 0x500
        mul     x2, x2, x6
        add     x0, x0, x2
        
        lsl     x1, x1, #2
        add     x0, x0, x1
        
        movz    x2, #0      // Cont Alto

pintar_rectangulo_color_loop_fila:        
        movz    x1, #0      // Cont Ancho

pintar_rectangulo_color_loop_columna:        
        str     x5, [x0,#0]             // Para version 2.0 hay que: Llamar a funcion que verifique que estoy dentro del rango
        add     x0, x0, #4
        add     x1, x1, #1
        cmp     x1, x3
        b.lt       pintar_rectangulo_color_loop_columna
        add     x0, x0, #1280
        lsl     x6, x3, #2
        sub     x0, x0, x6
        
        add     x2, x2, #1
        
        cmp     x2, x4
        b.lt       pintar_rectangulo_color_loop_fila
           
		ldr     x6,[sp, 0]
        ldr     x30,[sp, 8]
        ldr     x29,[sp, 16]
        add     sp, sp ,32
		ret
        
        
 /*  
    x0  direccion de pantalla
    x1  columna de pantalla
    x9  ancho
    x5  color
*/
      
        
pintar_linea:       
        
        sub     sp, sp ,32
        str     x29,[sp, 16]
        str     x30,[sp, 8]
        str     x6,[sp, 0]
        
        movz    x6, 0x500   // 320 x 4 = 1280 = 0x500
        mul     x2, x2, x6
        add     x0, x0, x2
                
        lsl     x1, x1, #2
        add     x0, x0, x1        
                
        movz    x2, #0      // contador del alto

       
        movz    x1, #0      // contador de ancho

pintar_linea_loop:        
        str     x5, [x0,#0]             // Para version 2.0 hay que: Llamar a funcion que verifique que estoy dentro del rango
        add     x0, x0, #4              //Ademas la idea de esta funcion es poder editarla en version 2.0 para que realice un triangulo equilatero
        add     x1, x1, #1
        cmp     x1, x9
               
        b.lt   pintar_linea_loop
        
        
		ldr     x6,[sp, 0]
        ldr     x30,[sp, 8]
        ldr     x29,[sp, 16]
        add     sp, sp ,32
		ret
        
