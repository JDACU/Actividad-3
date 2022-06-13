Algoritmo Matriz_Fibonacci
	Definir l,n1,n2,n3 como Entero
	Definir p Como Caracter
	Dimension Matriz[10,10];
	l <- 99
	
	Para x<-1 Hasta 10 Con Paso 1 Hacer
		Para i<-1 Hasta 10 Con Paso 1 Hacer
			Matriz[x,i] <- azar(l) + 1;
		Fin Para
	Fin Para
	
	Para x<-1 Hasta 10 Con Paso 1 Hacer
		Para i<-1 Hasta 10 Con Paso 1 Hacer
			// Imprimir Matriz de forma linda
			Si Matriz[x,i] < 10 Entonces
				Escribir Sin Saltar "[" Matriz[x,i] " ]"; 
			SiNo
				Escribir Sin Saltar "[" Matriz[x,i] "]"; 
			Fin Si
		Fin Para
		Escribir " "
	Fin Para
	
	Escribir ""
	Escribir "Fibonacci"
	Escribir ""
	
	Para x<-1 Hasta 10 Con Paso 1 Hacer
		Para i<-1 Hasta 10 Con Paso 1 Hacer
			n1<-0
			n2<-1
			Para i<-1 Hasta l Hacer
				Si x <= 10 y i <= 10 Entonces
					Si n1 = Matriz[x,i] Entonces
						Escribir "El #" Matriz[x,i] " En posicion [" x "][" i "]"
					Fin Si
					n3<-n1+n2
					n1<-n2
					n2<-n3
				Fin Si
			FinPara
		Fin Para
	Fin Para
	
FinAlgoritmo