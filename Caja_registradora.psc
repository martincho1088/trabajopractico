Algoritmo Caja_registradora
	definir cantproductos,valdelproductoactual,totalproducto,totalfactutra,totaldia,cantidaddineroentregadocliente,vueltoaentregar,clavecajaregistradora,controlaelfndelcicloprinc, elegiropcionesdelmenu Como Entero
	totalfactutra <- 0 
	totaldia <- 0
	clavecajaregistradora <- 123
	controlaelfndelcicloprinc <- 0
	Mientras (controlaelfndelcicloprinc == 0) Hacer
		escribir "==menu=="
		escribir "1. vender"
		escribir "2. ver total del dia y finalizar"
		leer elegiropcionesdelmenu
		Segun elegiropcionesdelmenu Hacer
			1:
				Limpiar pantalla
				escribir "ingresa la cantidad de productos que vendera"
				leer cantproductos
				Para i <- 1 Hasta cantproductos Con Paso 1 Hacer
					escribir "ingrese e valor del producto"
					leer cantidadavenderdelproductoactual
					totalproducto <- valdelproductoactual*cantidadavenderdelproductoactual
					totalfactutra <- totalfactutra+totalproducto
				Fin Para
				escribir "digite la clave de la caja registradora"
				leer clavecajaregistradora
				Si (clavecajaregistradora==123) Entonces
					escribir "ingrese la cantidad de dinero entregada por el cliente"
					leer cantidaddineroentregadocliente
					vueltoaentregar <- cantidaddineroentregadocliente-totalfactutra
					escribir "**resumen de la compra**"
					escribir "El total de la compra fue", totalfactutra
					escribir "El dinero entregado por el cliente" cantidaddineroentregadocliente
					escribir " Vuelto del cliente", vueltoaentregar
					totaldia <- totaldia+totalfactutra
					totalfactutra <- 0
				SiNo
					escribir "la clave ingresada es invalida"
				Fin Si
			
				limpiar pantalla 
				controlaelfndelcicloprinc<-1
				escribir "el total en ventas del dia fue", totaldia
			
		
				De Otro Modo:
				escribir "ingreso una opcion invalida" 
		Fin Segun
		
	
	Fin Mientras
	
FinAlgoritmo
