//  Este algoritmo le pide al usuario que ingrese una lista de invitados 
// y luego se llama a un subproceso que nos indica si "Lionel Messi" esta en la lista.
// Desarrolle el codigo dentro del subproceso "Buscar_A_Messi"

Algoritmo ProgramaPrincipal
	
	Definir persona Como Caracter
	Definir cantidad_invitados, i Como Entero
	Definir encontrado Como Logico
	
	Escribir "Ingrese la cantidad de invitados"
	Leer cantidad_invitados
	
	Dimension persona[cantidad_invitados]
	
	Para i=0 hasta cantidad_invitados-1 con paso 1 Hacer
		
		Escribir "Ingrese el nombre y apellido del invitado ",i+1
		Leer persona[i]
		
	FinPara
	
	Buscar_A_Messi(persona, cantidad_invitados)
	
	
FinAlgoritmo

SubProceso Buscar_A_Messi( persona, cantidad_invitados )
	definir I Como Entero
	Mientras i <= cantidad_invitados Hacer
		si persona[i] = "Lionel Messi"
			Escribir "Encontramos a Messi!!"
			i=cantidad_invitados
		SiNo
			Escribir "Messi no esta"
			i=cantidad_invitados
		FinSi
		
		i= i+1
	FinMientras
	
	
	
FinSubProceso