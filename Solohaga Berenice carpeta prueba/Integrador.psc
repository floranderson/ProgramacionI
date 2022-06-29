//Grupo 8
//Razzetto Clara
//Mazzurco Sofia
//Solohaga Berenice

Proceso Integrador
	
	//cantidad de columnas en la matriz
	Definir columna Como Entero
	columna = 4 // 0 Apellido y nombre - 1 cuil - 2 edad - 3 telefono
	
	//cantidad de empleados
	Definir fila Como Entero 
	Escribir "Ingrese la cantidad de empleados a ingresar"
	Leer fila
	
	//Defino  una matriz
	Definir empleados Como Caracter
	Dimension empleados[fila, columna] 
	
	//SubProceso para ingresar empleados
	cargaEmpleados(empleados, fila)
	
	Definir op Como Entero //opcion del menú
	
	Repetir
		Escribir "Ingrese la opción deseada"
		Escribir "1-Ver empleado"
		Escribir "2-Editar Telefeno"
		Escribir "3-Mostrar lista de empleados ordenada por apellido y nombre"
		Escribir "4-Mostrar lista empleados ordenada por edad"
		Escribir "5-Salir"
		Leer op
		
		Segun op Hacer
			1:
				verEmpleado(empleados, fila, columna)
			2:
				editarTelefono(empleados,fila, columna)
			3:
				mostrarPorNombreApellido(empleados, fila, columna)
			4:
				mostrarPorEdad(empleados, fila, columna)
			5:
				Escribir "Chau"
			De Otro Modo:
				Escribir "Opción incorrecta!"
		Fin Segun
		
	Mientras Que op<>5
	
	
FinProceso

//Opcion 4
SubProceso mostrarPorEdad(empleados, fila, columna)
	Definir i,j,k, pos_menor Como Entero
	Definir aux Como Caracter
	
	Para i=0 hasta fila-2 Hacer
		pos_menor=i
		Para j=i+1 hasta fila-1 Hacer
			Si empleados[j,2]<empleados[pos_menor,2] Entonces
				pos_menor = j
			FinSi
		FinPara
		Para k=0 hasta columna-1 hacer
			aux = empleados[i,k]
			empleados[i,k] = empleados[pos_menor,k]
			empleados[pos_menor,k] = aux
		FinPara
	FinPara
	
	mostrarLista(empleados, fila, columna)
FinSubProceso

//Opcion 3
SubProceso mostrarPorNombreApellido(empleados, fila, columna)
	Definir i,j,k, pos_menor Como Entero
	Definir aux Como Caracter
	
	Para i=0 hasta fila-2 Hacer
		pos_menor=i
		Para j=i+1 hasta fila-1 Hacer
			Si empleados[j,0]<empleados[pos_menor,0] Entonces
				pos_menor = j
			FinSi
		FinPara
		Para k=0 hasta columna-1 hacer
			aux = empleados[i,k]
			empleados[i,k] = empleados[pos_menor,k]
			empleados[pos_menor,k] = aux
		FinPara
	FinPara
	
	mostrarLista(empleados, fila, columna)
FinSubProceso

//Opcion 2
SubProceso editarTelefono(empleados, fila, columna)
	Definir posicion Como Entero
	posicion = buscarCuil(empleados, fila, columna)
	
	//Si el cuil no fue encontrado, la funcion buscar cuil devuelve -1 
	Si posicion <> -1
		Escribir "Ingrese el nuevo numero de telefono"
		Leer empleados[posicion,3]
	FinSi
	
FinSubProceso

//MostrarLista
SubProceso mostrarLista(empleados, fila, columna)
	Definir i, j Como Entero
	Para i = 0 Hasta  fila-1
		Para j = 0 hasta columna-1
			Escribir Sin Saltar empleados[i,j] " "
		FinPara
		Escribir " "
	FinPara
FinSubProceso

//Opcion 1
SubProceso verEmpleado(empleados, fila, columna)
	Definir posicion Como Entero
	posicion = buscarCuil(empleados, fila, columna)
	
	Definir i Como Entero
	
	Si posicion <> -1
		Para i = 0 hasta columna-1
			Escribir Sin Saltar empleados[posicion,i] " "
		Fin para
		Escribir " "
	FinSi
	
FinSubProceso

SubProceso posicion = buscarCuil(empleados, fila, columna)
	
	Definir cuil Como Caracter
	//ingresa y valida el cuil que desea buscar
	cuil = validarCuil()
	
	Definir i, posicion Como Entero
	i = 0
	posicion = -1
	Definir encontrado Como Logico
	encontrado = Falso
	
	Mientras i < fila
		Si empleados[i,1] == cuil 
			posicion = i
			encontrado = Verdadero
			i = fila
		FinSi
		i = i + 1
	FinMientras
	
	Si encontrado == falso
		Escribir "El cuil ingresado no corresponde con un empleado"
	FinSi
	
FinSubProceso

//CARGA EMPLEADOS
SubProceso cargaEmpleados(empleados Por Referencia, fila)
	Definir i Como Entero
	Para i=0 hasta fila-1 Hacer
		
		Escribir "Ingrese el empleado " i+1
		
		Escribir "Ingrese apellido y nombre"
		Leer empleados[i,0]
		
		//guardo el cuil en el arreglo
		empleados[i,1] = validarCuil()
		
		Escribir "Ingrese edad"
		Leer empleados[i,2]
		
		Escribir "Ingrese telefono"
		Leer empleados[i,3]
		
	FinPara
FinSubProceso

SubProceso cuil = validarCuil()
	
	Definir cuil Como Caracter
	Definir comienzoCuil Como Entero //guarda los primeros 2 numeros del cuil 
	
	Repetir
		
		Escribir "Ingrese el cuil"
		Leer cuil
	
		comienzoCuil = ConvertirANumero(SubCadena(cuil,0,1))  //convierto a numero los dos primeros numeros del caracter cuil 
		
		//si la longitud es menor a 10 o mayor a 11 
		//Y los primeros dos valores ingresados en el cuil son distintos de 20 o no se encuentran dentro del intervalo 23 a 27
		//Se pide volver a ingresar el cuil
		Si (Longitud(cuil)<10 O Longitud(cuil)>11) Y (comienzoCuil <> 20 O comienzoCuil<23 O comienzoCuil>27)
			Escribir "Cuil Incorrecto!"
		FinSi
		
	Mientras que (Longitud(cuil)<10 O Longitud(cuil)>11) Y (comienzoCuil <> 20 O comienzoCuil<23 O comienzoCuil>27)
	
FinSubProceso

	