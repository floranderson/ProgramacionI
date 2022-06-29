//  Este algoritmo le pide al usuario que ingrese una lista de invitados 
// y luego se llama a un subproceso que nos indica si "Lionel Messi" esta en la lista.
// Desarrolle el codigo dentro del subproceso "Buscar_A_Messi"

Algoritmo ParcialM35si
	
    Definir persona Como Caracter
    Definir cantidad_invitados, i Como Entero
    Definir encontrado Como Logico
	
    Escribir "Ingrese la cantidad de invitados"
    Leer cantidad_invitados
	
    Dimension persona[cantidad_invitados]
	
    Para i<-0 hasta cantidad_invitados-1 con paso 1 Hacer
		
        Escribir "Ingrese el nombre y apellido del invitado en la posicion ",i
        Leer persona[i]
		
    FinPara
	
    Buscar_A_Messi(persona, cantidad_invitados)
	
	
FinAlgoritmo

SubProceso Buscar_A_Messi( persona, cantidad_invitados )	
    //ESCRIBIR AQUI EL CODIGO DEL PARCIAL
    Definir i Como Entero
    Definir encontrado Como Logico
    definir personaingresada Como Caracter
    personaingresada<-"Lionel Messi"
    encontrado<-Falso
    i<-0
	
    Mientras i<cantidad_invitados y encontrado=Falso
        si personaingresada = persona[i]
            encontrado<-Verdadero
        SiNo
            i<-i+1
        FinSi
    FinMientras
	
    si !encontrado
        Escribir "Messi no está"
    SiNo
        Escribir "Encontramos a Messi en la posicion ",i
    FinSi
	
	
FinSubProceso
	
	

