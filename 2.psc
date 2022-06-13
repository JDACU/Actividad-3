Algoritmo Matriz_Diagonal
	Definir x,i,sum,suminv,ey como Entero
	//Crear y asignar numeros a la matriz
	Dimension Matriz[10,10];
	Para x<-1 Hasta 10 Con Paso 1 Hacer
		Para i<-1 Hasta 10 Con Paso 1 Hacer
			Matriz[x,i]<- azar(50) + 1;
		Fin Para
	Fin Para
	
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
		Fin Para
		Escribir " "
	Fin Para
	Escribir "¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯"
	sum = 0
	//Diagonal principal
	Escribir "Diagonal Principal"
	Para i <- 1 Hasta 10 Con Paso 1 Hacer
		Escribir Sin Saltar Matriz[i,i] "|"; 
		sum <- sum + Matriz[i,i] 
	FinPara
	Escribir " "
	Escribir "Suma de diagonal principal: " sum
	Escribir " "
	Escribir "Diagonal Inversa"
	
	//Diagonal Inversa
	suminv = 0
	ey = 1
	Para x <- 10 Hasta 1 Con Paso -1 Hacer
		Escribir Sin Saltar Matriz[x,ey] "|"; 
		suminv <- suminv + Matriz[x,ey] 
		ey <- ey + 1
	FinPara
	Escribir " "
	Escribir "Suma de diagonal inversa: " suminv
	Escribir " "
	Escribir "Resta de las diagonales " sum - suminv
FinAlgoritmo