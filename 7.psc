Algoritmo Matriz_Primos
	Definir l,n1,n2,n3,cont, prm como Entero
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
	Escribir "Primos"
	Escribir ""
	
	Para x<-1 Hasta 10 Con Paso 1 Hacer
		Para i<-1 Hasta 10 Con Paso 1 Hacer
			
			para num = 1 hasta l hacer 		
				prm = 1
				cont = 0
				mientras prm <= num hacer
					si num mod prm == 0 entonces
						cont = cont + 1
					FinSi
					prm=prm+1
				FinMientras
				
				si cont == 2 entonces
					Si Matriz[x,i] = num Entonces
						Escribir "El #" Matriz[x,i] " es de los primeros 100 primos"
					Fin Si
				FinSi				
			Finpara
		Fin Para
	Fin Para
	
FinAlgoritmo	