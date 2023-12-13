Algoritmo Comida
	
	Dimension Comidas[3];
	Comidas[1]=270;
	Comidas[2]=340;
	Comidas[3]=390;
	Escribir "Seleccione el producto"
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Escribir i ". Producto: " i " " Comidas[i];
	FinPara
	
	bandera = Falso;
	
	Repetir
		Leer producto;
		si producto >= 1 y producto <=3 Entonces
			bandera= Verdadero;
		SiNo
			Escribir "por favor ingrese un numero del 1 al 3"
		FinSi
	Hasta Que bandera
	total=calcularValor(Comidas[producto]);
	vueltos(total, Comidas[producto]);
	
FinAlgoritmo

Funcion total<-calcularValor (precio)
	
	bandera = Verdadero;
	j=0;
	
	Mientras bandera Hacer
		
		bande=falso;
		Repetir
			Escribir "Ingrese la moneda: "
			Leer moneda;
			si moneda = 10 o moneda = 50 o moneda = 100
				bande= Verdadero;
			SiNo
				Escribir "Ingrese una moneda valida";
			FinSi
		Hasta Que bande
		j= j + moneda;
		si j >= precio Entonces
			bandera = Falso;			
		FinSi
		Limpiar Pantalla;
	Fin Mientras
	total= j;
	
	
FinFuncion

Funcion vueltos(total, precio)
	
	cambio=total-precio;
	j=cambio/50
	si trunc(j) = 0 Entonces
		j=cambio/10;
		si trunc(j) <> 0 Entonces
			Escribir "Su cambio es: " aux " de 10";
		SiNo
			Escribir "no hay cambio";
		FinSi
	SiNo
		cM=trunc(j);
		cambio=cambio-50;
		j=cambio/10;
		si trunc(j) <> 0 Entonces
			Escribir "Su cambio es: " cM " de 50 y " j " de 10";
		SiNo
			Escribir "No hay mas cambio";
		FinSi
	FinSi
	
FinFuncion
