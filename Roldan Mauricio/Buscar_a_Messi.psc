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
	
	encontrado= Buscar_A_Messi(persona, cantidad_invitados)
	Si encontrado 
		Escribir "Encontramos a Messi!!"
	SiNo
		Escribir "Messi no esta."
	FinSi
	
FinAlgoritmo

SubProceso encontrado <- Buscar_A_Messi( persona, cantidad_invitados )
	Mientras i<= cantidad_invitados-1 Hacer
		si persona[i]=="Lionel Messi"
			encontrado<-Verdadero
		FinSi
		i= i+1
	FinMientras
FinSubProceso
