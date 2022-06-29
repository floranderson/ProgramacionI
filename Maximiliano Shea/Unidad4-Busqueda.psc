// Realizar un programa que permita al usuario de un hospital, buscar a un paciente por el
// número de DNI e informar al usuario los datos de la persona.

Proceso sin_titulo
	Definir personas,dni Como Caracter
	Definir i,posicion,opc, dim Como Entero
	Definir encontrado Como Logico
	Dimension personas[8,5]
	
	
	
	personas[0,0] = "Ana";
    personas[1,0] = "Camila";
    personas[2,0] = "Bruno";
    personas[3,0] = "Dardo";
    personas[4,0] = "Ernestina";
    personas[5,0] = "Fausto";
    personas[6,0] = "Jasmin";
    personas[7,0] = "Leonardo";
	
    personas[0,1] = "Martinez";
    personas[1,1] = "Noe";
    personas[2,1] = "Noe";
    personas[3,1] = "Pistilli";
    personas[4,1] = "Quesada";
    personas[5,1] = "Ramirez";
    personas[6,1] = "Sosa";
    personas[7,1] = "Tolosa";
	
    personas[0,2] = "17123456";
    personas[1,2] = "25789101";
    personas[2,2] = "39121314";
    personas[3,2] = "21151617";
    personas[4,2] = "33181920";
    personas[5,2] = "15212223";
    personas[6,2] = "40242526";
    personas[7,2] = "11272829";
	
    personas[0,3] = "+541141200011";
    personas[1,3] = "+543419485831";
    personas[2,3] = "+541145565789";
    personas[3,3] = "+541158637543";
    personas[4,3] = "+541158637543";
    personas[5,3] = "+543423444567";
    personas[6,3] = "+543402512345";
    personas[7,3] = "+541151234567";
	
    personas[0,4] = "56";
    personas[1,4] = "45";
    personas[2,4] = "26";
    personas[3,4] = "48";
    personas[4,4] = "35";
    personas[5,4] = "60";
    personas[6,4] = "25";
    personas[7,4] = "70";
	
	i=0
	encontrado = Falso
	
	
	
	Escribir "1-Buscar por DNI"
	Escribir "2-Apellidos ordenados "
	
	Leer opc
	
	
	Segun opc Hacer
		1 : Escribir " Ingrese el DNI de la persona "
			Leer dni
		2 : Ordenseleccion(personas,dim)
	FinSegun
						
			
	
	
	
	
	

	Mientras i <= 7 y !encontrado Hacer
		Si personas[i, 2] == dni
			encontrado = Verdadero
			posicion = i			
		SiNo
			i = i + 1
		Fin Si
	FinMientras	
		
	
	
	Si !encontrado
		Escribir "DNI no encontrado, intente nuevamente "
		Leer dni
	SiNo
		Escribir "Encontrado"
		Escribir "Informacion del paciente:"
		Escribir "Nombre:", personas[posicion, 0]
		Escribir "Apellido:", personas[posicion, 1]
		Escribir "DNI:", personas[posicion, 2]
		Escribir "Telefono:", personas[posicion, 3]
		Escribir "Edad:", personas[posicion, 4]		
	FinSi	
	
	Si opc = 2
		Ordenseleccion(personas,dim)
		    Para i<-0 Hasta 7 Hacer
				Mostrar "Apellido " , personas[i, 1]				
				Mostrar "Nombre " , personas[i, 0]							
				Mostrar "DNI ", personas[i, 2]				
				Mostrar "Edad ", personas[i, 4]				
				Mostrar "Telefono ", personas[i, 3]	
				Mostrar "-------------------"
	FinPara		
	FinSi	
FinProceso

SubProceso OrdenSeleccion(personas,dim)
	Definir i, j, posicion,aux Como Entero
	Para i<-0 Hasta dim-2 Hacer
		posicion <- 1
		Para j<-i+1 Hasta dim-1 Hacer
			Si	Personas[j] < Personas[posicion, i] Entonces
				posicion<-j				
			FinSi
			can_comparaciones=can_comparaciones +1
		FinPara
		aux<- Personas[i]
		personas[i] <- personas[posicion,i]
		personas[posicion,1] <- aux
	FinPara
	
	
	
FinSubProceso






