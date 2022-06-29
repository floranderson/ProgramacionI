Proceso ejercicio4
	
	//Escribir un algoritmo que permita ingresar 10 valores numericos en un arreglo y que como resultado devuelva
	//el mayor de todos los valores ingresados
	
	Definir arreglo, num_mayor, i Como Real
	Dimension arreglo[10]
	num_mayor<-0
	
Para i<-0 hasta 9 Con Paso 1
	Escribir "Ingrese un numero"
	Leer arreglo[i]
	
	Si arreglo[i] > num_mayor
		num_mayor<-0
		num_mayor<-num_mayor + arreglo[i]
	FinSi
	
	
Fin Para

Escribir "El numero mayor es:" num_mayor
	
	
	
	
FinProceso
