Funcion listaAleatorio (a, b, c)
	
	para i <- 1 hasta 10 Con Paso 1 Hacer
		a[i]=Aleatorio(1,10);
		b[i]=a[i];
		c[i]=a[i];
		Escribir a[i];
	FinPara
	Escribir "Lista original: "

FinFuncion

Funcion Ascendente(b)
	Para i=1 Hasta 10 Con Paso 1 Hacer 
        Para j=1 Hasta 9 Con Paso 1 Hacer 
            Si b[j] > b[j+1] Entonces
                aux = b[j]; 
				b[j] = b[j+1]; 
				b[j+1] = aux;
				
            Fin Si
        Fin Para
    Fin Para
	Escribir "De forma ascendente" 
	Para i = 1 Hasta 10 Con Paso 1 Hacer
		Escribir b[i];
	FinPara
	
FinFuncion

Funcion Descendente(c)
	
	Para i=1 Hasta 10 Con Paso 1 Hacer 
        Para j=1 Hasta 9 Con Paso 1 Hacer 
            Si c[j] < c[j+1] Entonces
                aux = c[j]; 
				c[j] = c[j+1]; 
				c[j+1] = aux;
				
            Fin Si
        Fin Para
    Fin Para
	Escribir "De forma descendente"
	Para i = 1 Hasta 10 Con Paso 1 Hacer
		Escribir c[i] Sin Saltar
	FinPara
	
FinFuncion

Algoritmo ordenarNumeros
	Dimension a[10], b[10], c[10];
	listaAleatorio(a, b, c);
	Ascendente(b);
	Descendente(c);
FinAlgoritmo