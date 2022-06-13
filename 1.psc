Algoritmo Matriz_menor_mayor
	Definir x,i,ma,me,pma1,pma2,pme1,pme2 como Entero
	//Crear y asignar numeros a la matriz
	Dimension Matriz[10,10];
	Para x<-1 Hasta 10 Con Paso 1 Hacer
		Para i<-1 Hasta 10 Con Paso 1 Hacer
			Matriz[x,i]<- azar(50) + 1;
		Fin Para
	Fin Para
	
	ma <- 0
	me <- 9999
	
	Escribir "_______________________________"
	Para x<-1 Hasta 10 Con Paso 1 Hacer
		Escribir Sin Saltar "|"
		Para i<-1 Hasta 10 Con Paso 1 Hacer
			// Imprimir Matriz de forma linda
			Si Matriz[x,i] < 10 Entonces
				Escribir Sin Saltar Matriz[x,i] " |	"; 
			SiNo
				Escribir Sin Saltar Matriz[x,i] "|	"; 
			Fin Si
			
			//Buscar el mayor
			Si  Matriz[x,i] > ma Entonces
				ma <- Matriz[x,i]
				pma1 <- x
				pma2 <- i
			FinSi
			
			//Buscar el menor
			Si  Matriz[x,i] < me Entonces
				me <- Matriz[x,i]
				pme1 <- x
				pme2 <- i
			FinSi
		Fin Para
		Escribir " "
	Fin Para
	Escribir "¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯"
	
	Escribir "El mayor de la matriz es: " Matriz[pma1, pma2] " en posicion [" pma1 "][" pma2 "]" 
	Escribir "El menor de la matriz es: " Matriz[pme1, pme2] " en posicion [" pme1 "][" pme2 "]" 
	
	
FinAlgoritmo