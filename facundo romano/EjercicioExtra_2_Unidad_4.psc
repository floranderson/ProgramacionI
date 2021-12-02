Proceso EjercicioExtra_2_Unidad_4
	
    Definir invitado Como Caracter
    Definir i, n Como Entero
	
    Escribir "Ingrese la cantidad de invitados a la fiesta."
    Leer n
	
    Mientras n<1 Hacer
        Escribir "Cantidad incorrecta. Ingrese nuevamente."
        Leer n
    FinMientras
	
    Dimension invitado[n]
    n=n-1
	
    Para i=0 hasta n con paso 1 Hacer
        Escribir "Ingrese el nombre del invitado " i+1
        Leer invitado[i]
    FinPara
	
    Escribir "Los invitados a la fiesta son "
    para i=0 hasta n con paso 1 Hacer
        mostrar invitado[i]
    FinPara
	
FinProceso