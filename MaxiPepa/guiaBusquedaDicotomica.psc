Proceso guiaBusquedaDicotomica
	
	Definir i, array, dim, buscar Como Entero
	
	Escribir "Ingrese la dimensión: "
	Leer dim
	
	Dimension array[dim]
	
	Escribir "Ingrese los números"
	Para i <- 0 Hasta dim-1 Con Paso 1
		
		Leer array[i]
		
	FinPara
	
	Escribir "¿Que número quiere buscar?"
	Leer buscar
	
	busquedaDicotomica(array, dim, buscar)
	
FinProceso

SubProceso busquedaDicotomica(array, dim, buscar)
	
	Definir centro, inferior, superior Como Entero
	Definir encontrado Como Logico
	inferior = 0
	superior = dim - 1
	encontrado = Falso
	
	Repetir
		
		centro = trunc((inferior + superior) / 2)
		
		Si array[centro] == buscar
			
			Escribir "El elemento fué encontrado y está en la posición ", centro
			encontrado = Verdadero
			
		SiNo
			
			Si array[centro] < buscar
				
				inferior = centro + 1
				
			SiNo
				
				superior = centro - 1
				
			FinSi
			
		FinSi
		
		Si inferior > superior
			
			Escribir "Número no encontrado"
			
		FinSi
		
	Mientras Que !encontrado y inferior <= superior
	
FinSubProceso
	