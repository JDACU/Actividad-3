Algoritmo Votaciones
		
	Definir zo, ca, Votos, Total, Max, Valid, cValid como Entero
	Definir se, seg_vuelta como Logico

	Dimension Votos[3,4];
	Dimension Resultados[3]
		
	se <- Verdadero
	Mientras se Hacer
		Escribir ""
		Escribir "Inserte la zona"
		Escribir "(0) Resultados."
		Escribir "(1) Zona 1."
		Escribir "(2) Zona 2."
		Escribir "(3) Zona 3."
		Escribir "(4) Zona 4."
		leer zo
		Si zo = 0  Entonces
			Max = 1
			Escribir ""
			Escribir "Resultados por zona"
			Para x <- 1 Hasta 4 Con Paso 1 Hacer
				Escribir "Zona " x
				Para i <- 1 Hasta 3 Con Paso 1 Hacer
					Si i <= 3 Entonces
						Resultados[i] = Resultados[i]  + Votos[i, x]
						Total = Total + Votos[i, x]
					Fin Si
					Escribir " Candidato " i ": " Votos[i, x]
				FinPara
			FinPara
			
			Escribir ""
			Escribir "Total votos"
			Para r <- 1 Hasta 3 Con Paso 1 Hacer
				Si Resultados[r] > Resultados[Max] Entonces
					Max = r
				Fin Si
				Escribir "Candidato " r ": " Resultados[r] / Total * 100 "% (" Resultados[r]  ")"
			FinPara
			
			seg_vuelta <- Falso
			
			cValid = 1
			Valid = Resultados[1]
			
			Escribir ""
			Para r <- 1 Hasta 3 Con Paso 1 Hacer
				Si r < 4 Entonces
					Si Valid = Resultados[r] y r <> 1 Entonces
						cValid = cValid + 1
					Fin Si	
					
					Si Resultados[r]  = Resultados[Max] y r <> Max y cValid <> 3 Entonces
						seg_vuelta <- verdadero
					Fin Si
				FinSi
			FinPara
			
			Si cValid = 3 Entonces
				Escribir "Empate entre todos los candidatos se rehace todo"
				
				Para x <- 1 Hasta 3 Con Paso 1 Hacer
					Resultados[x] = 0
					Para i <- 1 Hasta 4 Con Paso 1 Hacer
						Votos[x,i] = 0
					FinPara
				FinPara
				
			Sino
				Si seg_vuelta Entonces
					Escribir "Se va a segunda vuelta"
				SiNo
					Escribir "El ganador es el Candidato " Max
					se <- Falso
				Fin Si
			FinSi
			
		Sino 
			Si zo <= 4 Entonces					
				Escribir "Zona seleccionada: " zo
				Mientras se Hacer
					Escribir ""
					Escribir "Inserte el candidato por el cual desea votar"
					Escribir "(0) Cambiar de zona."
					Escribir "(1) Candidato 1."
					Escribir "(2) Candidato 2."
					Escribir "(3) Candidato 3."
					leer ca
					Si ca = 0  Entonces
						se <- Falso
					SiNo
						Si ca <= 3 Entonces
							Votos[ca, zo] <- Votos[ca, zo] + 1
						SiNo
							Escribir "No se encontro el candidato"
						Fin Si
					Fin Si
				FinMientras
				se <- Verdadero
			Sino
				Escribir "No se encontro la zona"
			Fin Si
		Fin Si
	FinMientras
FinAlgoritmo