Algoritmo sin_titulo
	Definir num, may Como Entero
	may = 0
	Dimension  num[10]
	Para i <- 1 Hasta 10 Con Paso 1 Hacer
		Leer num[i]
		Si num[i]>may
			may = num[i]
		FinSi
	Fin Para
	Escribir "El numero mayor es:",may
FinAlgoritmo
