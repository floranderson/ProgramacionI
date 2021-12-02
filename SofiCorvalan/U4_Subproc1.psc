Proceso U4_Subproc1
	//Realizar un programa que llame a un subproceso que pida al usuario ingresar el nombre, el
	//apellido y la edad de una persona, luego llamar a otro subproceso que muestre por pantalla
	//los datos de la persona.
	
	Definir nombre Como caracter
	definir apellido Como caracter
	Definir edad como entero	

	ingresarDatos(nombre, apellido, edad)
	mostrarDatos(nombre, apellido, edad)	

FinProceso

SubProceso ingresarDatos (nombre por referencia, apellido por referencia, edad por referencia)
	
	Escribir "Ingrese su nombre: "
	leer nombre
	Escribir "Ingrese su apellido: "
	leer apellido
	
	repetir
		Escribir "Ingrese su edad: "
		Leer edad
		
		si edad <0 o edad >130
			Escribir "La edad ingresada es incorrecta. "
		FinSi
		
	mientras que edad <0 o edad >130
	
FinSubProceso

subproceso  mostrarDatos (nombre, apellido, edad)
	
	Escribir "El nombre ingresado es: ", nombre
	Escribir "El apellido ingresado es: ", apellido
	Escribir "La edad ingresada es: ", edad
	
FinSubProceso 



