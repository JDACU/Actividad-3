Algoritmo Matriz_Suma_Columnas
	Definir x,i,sum como Entero
	//Crear y asignar numeros a la matriz
	Dimension Matriz[10,10];
	Para x<-1 Hasta 10 Con Paso 1 Hacer
		Para i<-1 Hasta 10 Con Paso 1 Hacer
			Matriz[x,i]<- azar(50) + 1;
		Fin Para
	Fin Para	
	Escribir "_______________________________"
	Para x<-1 Hasta 10 Con Paso 1 Hacer
		sum = 0
		Escribir Sin Saltar "|"
		Para i<-1 Hasta 10 Con Paso 1 Hacer
			// Imprimir Matriz de forma linda
			sum <- sum + Matriz[x,i]
			Si Matriz[x,i] < 10 Entonces
				Escribir Sin Saltar Matriz[x,i] " |	"; 
			SiNo
				Escribir Sin Saltar Matriz[x,i] "|	"; 
			Fin Si
		Fin Para
		// Sumar las columnas
		Escribir Sin Saltar " Suma: " sum
		Escribir " "
	Fin Para
	Escribir "¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯"
FinAlgoritmo