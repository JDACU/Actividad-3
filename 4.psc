Algoritmo Matriz_Diagonal_Letras
	Definir n, l como Entero
	Definir p Como Caracter
	Escribir "Digite la palabra"
	Leer p
	n <- longitud(p)
	Dimension Matriz[n,n];
	
	Para i <- 1 Hasta n Con Paso 1 Hacer
		Matriz[i,i]<- subcadena(p, i, i)
	FinPara
	
	Para x<-1 Hasta n Con Paso 1 Hacer
		Para i<-1 Hasta n Con Paso 1 Hacer
			// Imprimir Matriz de forma linda
			Si Matriz[x,i] <> "" Entonces
				Escribir Sin Saltar "[" Matriz[x,i] "]"; 
			SiNo
				Escribir Sin Saltar "[ ]"; 
			Fin Si
		Fin Para
		Escribir " "
	Fin Para
	
FinAlgoritmo