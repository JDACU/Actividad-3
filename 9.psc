Algoritmo Matriz_Caracol // Juan David Castaño Usuga - jdcastano@soyucn.edu.co
		
		de <- 0;
		ab <- 1;
		iz <- 2;
		ar <- 3;
		i <- 1;
		dir <- de;
		
		Escribir "Ingrese la cantidad de números:";
		Leer n
		
		Dimension num(n, n);
		row = n
		col = n
		
		Para fil<-1 Hasta row Con Paso 1 Hacer
			Para co<-1 Hasta col Con Paso 1 Hacer
				num[fil,co] <- -1;
			FinPara
		FinPara
		fil <- 1;
		co <- 1;
		Mientras num[fil,co] = -1 Hacer
			num[fil,co] <- i;
			i <- i+1;
			Segun dir Hacer
				de:
					Si co<col Entonces
						Si num[fil,co+1]=-1 Entonces
							co <- co+1;
						Sino
							dir <- ab;
							fil <- fil+1;
						FinSi
					Sino
						dir <- ab;
						fil <- fil+1;
					FinSi
				ab:
					Si fil<row Entonces
						Si num[fil+1,co]=-1 Entonces
							fil <- fil+1;
						Sino
							dir <- iz;
							co <- co-1;
						FinSi
					Sino
						dir <- iz;
						co <- co-1;
					FinSi
				iz:
					Si co>1 Entonces
						Si num[fil,co-1]=-1 Entonces
							co <- co-1;
						Sino
							dir <- ar;
							fil <- fil-1;
						FinSi
					Sino
						dir <- ar;
						fil <- fil-1;
					FinSi
				ar:
					Si fil>1 Entonces
						Si num[fil-1,co]=-1 Entonces
							fil <- fil-1;
						Sino
							dir <- de;
							co <- co+1;
						FinSi
					Sino
						dir <- de;
						co <- co+1;
					FinSi
			FinSegun
		FinMientras
		
		Para fil<-1 Hasta row Con Paso 1 Hacer
			Para co<-1 Hasta col Con Paso 1 Hacer
				Si num[fil, co] < 10 Entonces
					Escribir Sin Saltar "[ " num[fil, co] "]"
				SiNo
					Escribir Sin Saltar "[" num[fil, co] "]"
				Fin Si
			FinPara
			Escribir ""
		FinPara
		
FinAlgoritmo
