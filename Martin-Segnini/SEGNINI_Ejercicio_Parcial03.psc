//  Este algoritmo le pide al usuario que ingrese una lista de invitados 
//  El sistema luego muestra la lista ordenada de forma ascendente y descendente

Algoritmo ProgramaPrincipal
	
	Definir persona, tipo_orden Como Caracter
	Definir cantidad_invitados, i Como Entero
	
	Escribir "Ingrese la cantidad de invitados"
	Leer cantidad_invitados
	
	Dimension persona[cantidad_invitados]
	
	Para i=0 hasta cantidad_invitados-1 con paso 1 Hacer
		
		Escribir "Ingrese el nombre y apellido del invitado ",i+1
		Leer persona[i]
		
	FinPara
	
	Ordenar_Lista_Ascendente(persona, cantidad_invitados)//ORDENAR EN ORDEN ASCENDENTE (DE MENOR A MAYOR)
	Escribir "Lista ordenada en forma ascendente"
	Mostrar_Lista_Ordenada(persona,cantidad_invitados)
	Ordenar_Lista_Descendente(persona, cantidad_invitados)//ORDENAR EN ORDEN DESCENDENTE (DE MAYOR A MENOR)
	Escribir "Lista ordenada en forma descendente"
	Mostrar_Lista_Ordenada(persona,cantidad_invitados)
FinAlgoritmo

SubProceso Ordenar_Lista_Ascendente(persona, cantidad_invitados)
	Definir i, j, posicion Como Entero
	Definir aux Como Caracter
	
	Para i<-0 hasta cantidad_invitados-2 Hacer
		posicion<-i
		Para j<-i+1 hasta cantidad_invitados-1 Hacer
			Si persona[j]<persona[posicion]
				posicion<-j
			FinSi
		FinPara
		aux<-persona[i]
		persona[i]<-persona[posicion]
		persona[posicion]<-aux
	FinPara
	
FinSubProceso

SubProceso Ordenar_Lista_Descendente(persona, cantidad_invitados)
	Definir i, j, posicion Como Entero
	Definir aux Como Caracter
	
	Para i<-0 hasta cantidad_invitados-2 Hacer
		posicion<-i
		Para j<-i+1 hasta cantidad_invitados-1 Hacer
			Si persona[j]>persona[posicion]
				posicion<-j
			FinSi
		FinPara
		aux<-persona[i]
		persona[i]<-persona[posicion]
		persona[posicion]<-aux
	FinPara
FinSubProceso

SubProceso Mostrar_Lista_Ordenada(persona, cantidad_invitados)
	Definir i Como Entero
	
	Para i<-0 hasta cantidad_invitados-1
		Mostrar persona[i]
	FinPara
	
FinSubProceso

