Funcion dolarAlza (precio, dia)
	j = 0
	Para i <- 1 Hasta dia-1 Con Paso 1 Hacer
		Escribir "Dia " i ": " precio[i];
		h=precio[i]-precio[i+1];
		si h>j Entonces
			j=h;
			
		FinSi
		 
	FinPara
	si j = 0 Entonces
		Escribir 'no hubo alza'
	SiNo
		Escribir 'el alza mayor fue:', j
	FinSi
	
Fin Funcion
Algoritmo Inflacion
	Escribir ' ingrese los dias'
	Leer dia
	Dimension lista[dia] , precio[dia]
	para i <- 1 Hasta dia Con Paso 1 Hacer
		Escribir "ingrese el valor del dia " i;
		Leer precio[i];
	FinPara
	dolarAlza(precio,dia)
FinAlgoritmo
	