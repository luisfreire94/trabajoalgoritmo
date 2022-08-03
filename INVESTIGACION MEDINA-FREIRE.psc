// Funciones de usuario para el Algoritmo Menu
// Presenta el menu en la pantalla
Funcion opc = presentarMenu(titulo,opciones,lim) 
	Escribir titulo
	Escribir ""
	Para pos=1 Hasta lim  Hacer
		Escribir opciones[pos]
	Fin Para
	Escribir "Elija opcion[1...",lim,"]: "
	Leer opc
FinFuncion
// EJERCICIOS BASICOS 
// suma de dos numeros (ejercicio 1)
Funcion suma(num1,num2)
	sum=num1+num2 
	Escribir num1 "+" num2 "=" sum
FinFuncion
// suma y resta de dos numeros (ejercicio 2)
Funcion sumayresta
	escribir "Digite un número"
	leer num1 
	escribir "Digite otro numero"
	leer num2
	si num1>= num2 Entonces
		sum=num1+num2
		Escribir "El resultado de la suma es:" ,sum
	sino 
		sum=num1-num2
		Escribir "El resultado de la resta es:" ,sum
	FinSi
	
FinFuncion
// Calcula el proceso matematico de dos numeros dada su operacion(EJERCICIO 3)
Funcion calculadora(operacion,num1,num2)
	Si operacion = "+" Entonces
		Escribir num1,"+",num2,"=",num1+num2
	SiNo
		Si operacion = "-" Entonces
			Escribir num1,"-",num2,"=",num1-num2
		SiNo
			Si operacion = "*" Entonces
				Escribir num1,"*",num2,"=",num1*num2
			SiNo
				Si operacion = "/" Entonces
					Escribir num1,"/",num2,"=",num1/num2
				SiNo
					Si operacion = "%" Entonces
						Escribir num1,"%",num2,"=",num1%num2
					SiNo
						Si operacion = "^" Entonces
							Escribir num1,"^",num2,"=",num1^num2
						SiNo
							Escribir "Operacion Incorrecta, intentelo de nuevo"
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	Fin Si
FinFuncion
// muestra el numero mayor de dos numeros(ejercicio 4)
Funcion num_mayor
	// se define variables
	Definir num1,num2 Como Entero
	num1 <- 0; num2 <- 0
	// entrada 
	Escribir 'Digite dos números: '
	Leer num1
	Leer num2
	Si num1>num2 Entonces
		Escribir 'El numero mayor es ',num1
	SiNo
		Escribir 'El numero mayor es ',num2
	FinSi
FinFuncion
// muestra el mayor de tres digitos ingresados (ejercicio 5)
Funcion tres_mayores
	definir a, b, c Como Entero
	a=0; b=0; c=0
	escribir "Ingrese el primer número" 
	leer a
	escribir "Ingrese el segundo número"
	leer b
	escribir "Ingrese el tercer número" 
	leer c	
	Si a>b y a>c Entonces		
			escribir "Es " ,a, " el numero mayor"			
			FinSi			
		si b>c y b>a entonces 
			escribir "Es " ,b, " el numero mayor"					
			FinSi
		si c>b y c>a entonces 
		escribir "Es " ,c, " el numero mayor"					
	FinSi	
FinFuncion
//se realiza la compra de un producto, si el producto es de mas de 100 dolares se le aplica descuento(ejercicio 6)
Funcion descuento_de_ropa
	//	definimos variable 
	Definir ptt, des, pttdes Como real
	ptt=0;des=0;pttdes=0
	//	entrada 
	Escribir "----------------BIENVENIDOS A LA TIENDA EL BARATON----------------" 
	Escribir "Ingrese el valor del producto:"
	leer ptt
	//	proceso 
	si ptt >= 100 Entonces
		des= ptt*0.1
		des2=ptt*0.05		
		iva=ptt*0.12
		pttdes=(ptt-des)+iva
		Escribir "Precio del producto: ", ptt
		Escribir "                  -10%: ", des
		Escribir "                  +IVA 12%: " iva
		Escribir "Precio total a pagar: ", pttdes
	sino 
		des2=ptt*0.05		
		iva=ptt*0.12
		pttdes=(ptt-des2)+iva
		Escribir "Precio del producto: ", ptt
		Escribir "                   -5%: ", des2
		Escribir "                   +IVA 12%: " iva
		Escribir "Precio total a pagar: ", pttdes
	FinSi
	Escribir " "
	Escribir "Gracias por su compra"
FinFuncion
//arroja la el sueldo el descuento y la liquidacion del trabajador (ejercicio 7)
Funcion sueldo_trabajadores
	Definir sueldo,descuento Como real
	Definir nombre Como Caracter
	Escribir "ROLES DE PAGO DE LA EMPRESA"
	Escribir "Nombre: "	
	leer nombre
	Escribir "Horas trabajadas: "
	leer horas
	Escribir "Sueldo por horas: "
	leer valorhora
	Escribir "Horas extras entre semana: "
	leer horas50
	Escribir "Horas extras domingos y feriados: "
	leer horas100
	sueldo = horas * valorhora
	Escribir "Su sueldo es de: " sueldo
	horasextras= ((valorhora/2)*horas50)+((valorhora*2)*horas100)
	Escribir "Horas extras: " horasextras
	ingresos= sueldo + horasextras
	Escribir "Sueldo + horas extras: " ingresos
	descuento = ingresos * 0.0935
	Escribir "Descuento del seguro: " descuento
	liquido = ingresos - descuento
	Escribir "Estimado, " nombre " su valor total a recibir es de: " liquido	
FinFuncion
//arroja el promedio de un estudiante y dice si esta aprobado o no (ejercicio 8)
Funcion promedio
	// definir variables 
	Definir a Como Entero
	Definir n,num,sum Como Real
	a <- 1; n <- 2; num <- 0; sum <- 0
	// entrada 
	// proceso 
	Mientras a<=n Hacer
		Escribir "Calificación número " a " de (0/100)"
		Leer num
		sum <- sum+num
		a <- a+1
	FinMientras
	Escribir 'El promedio es: ',sum/n
	si sum >= 70 Entonces
		Escribir "Aprobado" 
	SiNo
		Escribir "Reprobado"
	FinSi
FinFuncion
// indica si el numero ingresado es positivo o negativo (ejercicio 9)
Funcion positivo_negativo
	definir num como entero
	escribir "Ingrese un numero"
	leer num 
	Si num>0 Entonces
		escribir "Su numero es positivo"
	SiNo
		Escribir "Su numero es negativo"
	Fin Si
FinFuncion
//indica si un numero es par o impar (ejercicio 10)
Funcion par_impar
	definir num1 como real 
	escribir "Ingrese un numero"
	leer num1
	Si num1 % 2 =0 Entonces
		Escribir "El numero ingresado es par"
	SiNo
		Escribir "El numero ingresado es impar"
	Fin Si
FinFuncion
// te indica si son multiplos (ejercicio 11)
Funcion multiplos
	//	se definen las variables 
	Definir num1,num2 Como Entero
	num1=0;num2=0
	//	entrada
	Escribir "Ingrese numero"
	leer num1
	Escribir "Ingrese numero"
	leer num2
	//	Proceso 
	si num1 mod num2 =0 Entonces
		Escribir "Son multiplos"
	sino 
		Escribir "No son multiplos"
	FinSi
FinFuncion
// indica el mayor y el menro de una secuencia de numeros (ejercicio 12)
Funcion  mayor_y_menor
	// definimos variable
	Definir n,max,min,cont,tt Como Entero
	n <- 0; max <- 0; min <- 999999; cont <- 0; tt <- 0
	// entrada 
	Escribir "Cuantos números desea ingresar:"
	Leer lim
	Escribir 'Ingrese los ' lim " números:"
	Mientras cont<lim Hacer		
		Leer n
		Si n>=max Entonces
			max = n
		FinSi
		Si n<min Entonces
			min = n
		FinSi
		cont=cont+1
	FinMientras
	Escribir 'El numero mayor es: ',max
	Escribir 'El numero menor es: ',min
FinFuncion
// te indica cuales son positivos de todo los numeros ingresados (ejercicio 13)
Funcion  positivos 
	definir cant,pos Como Entero
	canr=0;
	Escribir "Cuantos números desea ingresar: "
	leer cant
	Escribir "Ingrese los " cant " números: "
	para i=1 hasta cant Hacer
		
		leer n
		si n>=1 Entonces
			pos=pos+1
		FinSi
	FinPara
	Escribir "Hay ",pos," números positivos"
FinFuncion
// realiza la suma de los que son multiplos de 5(ejercicio 14)
Funcion  secuencia_sumaymultiplo_5
	// se definen las variables 
	Definir n1,sum Como Entero
	n1 = 0; sum = 0; cont = 0
	Escribir "Cuantos números desea ingresar: "
	leer lim
	Escribir 'Ingrese los " lim " números:'
	Mientras cont<lim Hacer	
		Leer n1
		Si (n1 MOD 5=0) Entonces
			sum = sum+n1			
		FinSi
		cont = cont+1
	FinMientras
	Escribir 'La suma total es: ',sum
FinFuncion
// imprime los numeros pares desde el 2 hasta don se le indique (ejercicio 15)
Funcion pares2_n
	Escribir "Hasta que número desea ver los pares: "
	cont = 2
	leer lim
	Escribir " Los números pares del 2 al " lim " son: "
	mientras cont<=lim Hacer		
		Si cont MOD 2 = 0 Entonces
			Escribir cont
		FinSi
		cont=cont+1
	FinMientras	
FinFuncion
// te muestra la suma y el promedio de numeros negativos ingresados (ejercicio 16)
funcion sumaypromedio_de_negativos
	Definir prom Como Real	
	Escribir "Cuantos numeros desea ingresar? "
	leer lim
	Escribir "Ingrese los " lim " números: "
	Mientras cont<lim Hacer
		Leer num
		Si num<0 Entonces
			sum = num + sum
			Escribir "El número " num " es un número negativo."
			cantidad = cantidad +1
		FinSi
		cont = cont +1
	FinMientras
	prom = sum/lim
	Escribir "Hay " cantidad " números negativos."
	Escribir "La suma de todos los números negativos es: " sum
	Escribir "El promedio de todos los números negativos es: " prom
FinFuncion
// muestra el rango de los numeros dentro del rango 100-500 (ejercicio 17)
Funcion promedio_de_100_500
	// definir variables 
	Definir prom Como Real	
	Escribir "Cuantos numeros desea ingresar? "
	leer lim
	Escribir "Ingrese los " lim " números: "
	Mientras cont<lim Hacer
		Leer num
		Si num>=100 y num<=500 Entonces
			sum = num + sum
		FinSi
		cont = cont +1
	FinMientras
	prom = sum/lim	
	Escribir "El promedio de los números es: " prom
FinFuncion
//ejercicio 18
Funcion positivo_numero	
	num = -1
	Mientras num<0 Hacer
		escribir "Ingrese un numero"
		leer num
	FinMientras
FinFuncion
//ejercicio 19
Funcion base_exponente
Escribir "Ingrese número base: "
leer base
Escribir "Ingrese exponente: "
leer exponente
total = base^exponente
Escribir "El número " base " elevado al exponente " exponente " es igual a: " total
FinFuncion
// arroja el resultado de los numeros ingresados en factoriales (ejercicio 20)
Funcion factorial_hasta_0
	Definir num1,num2,fac como entero 
	num1=1;num2=1;fac=1
	//	entrada 
	Mientras num1<>0 Hacer
		escribir "Ingresa un numero entero"
		leer num1
		mientras num2<= num1 Hacer
			fac=fac*num2
			num2=num2+1
		FinMientras
		Escribir "El factorial de ", num1, " es: ", fac
	FinMientras
FinFuncion
//
//FIN DE EJERCICIOS BASICOS
//INICIO DE EJERCICIOS RAZONAMIENTO
//
//te indica cuantos digitos tiene tu numero (ejercicio 1)
Funcion digitos_de_numero
	//	definimos variable
	definir dig,n,h Como Entero
	n=0;dig=0
	//entrada 
	Escribir "ingrese un numero entero"
	leer n
	Mientras n>=1 Hacer
		n=trunc(n/10)
		dig= dig + 1
	Fin Mientras
	Escribir "el numero ingresado tiene ",dig, " digitos"
FinFuncion
// convierte de binario a decimal (ejercicio 2)
Funcion binario_a_decimal
	Definir x,n,decimal Como Entero
	Definir binario Como Caracter
	Escribir "Ingresa un numero en binario"
	leer n
	binario = ConvertirATexto(n)
	n = Longitud(binario)
	x = 0
	decimal = 0
	Mientras n >= 0 Hacer
		si Subcadena(binario,n,n) = "1" Entonces
			decimal= decimal+2^x 
		FinSi
		n = n - 1
		x = x + 1
	FinMientras
	Escribir "El numero en decimal es: ",decimal
FinFuncion
// te convierte un numero binario a decimal y luego a hexadecimal (ejercicio 3)
Funcion resultado = conversordesdedecimal(num,base)
	Definir resultado,digito Como Caracter
	Definir cociente Como Entero
	resultado <- ''; digito <- ''; cociente <- 0
	Si num=0 Entonces
		resultado <- '0'
	FinSi
	Mientras num>0 Hacer
		cociente <- num MOD base
		digito <- ConvertirATexto(cociente)
		Si cociente>9 Entonces
			digito <- letrashex(cociente)
		FinSi
		resultado <- Concatenar(digito,resultado)
		num <- trunc(num/base)
	FinMientras
FinFuncion
Funcion resultado = letrashex(cociente)
	Definir resultado Como Caracter
	Segun cociente  Hacer
		10:
			resultado <- 'A'
		11:
			resultado <- 'B'
		12:
			resultado <- 'C'
		13:
			resultado <- 'D'
		14:
			resultado <- 'E'
		15:
			resultado <- 'F'
	FinSegun
FinFuncion
// te arroja el numero ingresado en fibonacci (ejercicio 4)
Funcion  fibonacci 
	//	se definen las variables
	Definir n,n1,n2,n3 Como Entero
	n=0;n1=0;n2=1;n3=0
	//	entrada 
	Escribir "Por favor ingrese numero"
	leer n
	//	proceso 
	Para i=1 Hasta n Hacer
		Escribir n1
		n3=n1+n2
		n1=n2
		n2=n3
	FinPara
FinFuncion
// te muestra los divisores de un numero (ejercicio 5)
Funcion divisores_de_un_numero
	//	se definen las variables 
	Definir n1 como entero 
	n1=0
	//	entrada 
	Escribir "por favor ingrese el numero"
	leer n1 
	para i=1 Hasta n1 Hacer
		si n1 mod i=0 Entonces
			Escribir i
		FinSi
	FinPara
FinFuncion
// te indica si un numero es perfecto no (ejercicio 6)
Funcion numero_perfecto
	//	se definen las variables 
	Definir n,n1,perfecto como entero 
	n=0;n1=2;perfecto=0
	//	entrada 
	Escribir "por favor ingrese el numero"
	leer n
	Mientras n1<=n Hacer
		si n mod n1=0 Entonces
			Escribir n1 
			perfecto= perfecto+(n/n1)
		FinSi
		n1=n1+1
	FinMientras
	si perfecto=n Entonces
		Escribir "el numero ",n," es perfecto"
	sino 
		Escribir "el numero ",n," no es perfecto"
	FinSi
FinFuncion
//  te endica si dos numeros ingresados son amigos (ejercicio 8)
Funcion num_perfectos
	//	se definen las variables 
	Definir a,b,sumas como entero 
	a=0;b=0;sumas=0;x=1
	//	entrada 
	Escribir "por favor ingrese el numero"
	leer a,b
	Mientras x<a Hacer
		si a mod x=0 Entonces
			sumas=sumas+x
		FinSi
		x=x+1
	FinMientras
	si sumas=b Entonces
		Escribir "los numeros son amigos"
	SiNo
		Escribir "los numeros no son amigos"
	FinSi
FinFuncion
// Verifica si un numero es primo o no y devueve 1 si es primo y 0 si no es (ejercicio 9)
Funcion bandera=primo(num)
	Definir r,c,bandera Como Entero
	bandera=1;c=2
	// recorro mientras sea primo y c no lleaga al numero
	Mientras bandera=1 y c < num Hacer
		r=num MOD c
		Si r=0 Entonces
			bandera=0
		SiNo
			c=c+1
		Fin Si
	Fin Mientras
FinFuncion
// del numero 1 hasta el numero ingresado te indica cuales son primos (ejercicio 10)

//
//	FIN DE EJERCICIOS DE RAZONAMIENTOS
// INICIO DE EJERCICIOS CADENAS Y VECTORES
//
// Recorrer y presentar cadena caracter por caracter
Funcion presentarCadena(texto)
	Definir pos,lon Como Entero
    //Escribir Subcadena(texto,2,3)
	lon = Longitud(texto)
	Para pos=1 Hasta lon  Hacer
		Escribir Subcadena(texto,pos,pos)
	Fin Para
FinFuncion
// recorre y cadena y cuenta las vocales de dicha cadena
Funcion vocales(texto)
	Definir pos,lon Como Entero
    //Escribir Subcadena(texto,2,3)
	lon = Longitud(texto)
	Para pos=1 Hasta lon  Hacer
		Si Subcadena(texto,pos,pos) = 'a' | Subcadena(texto,pos,pos)='e' | Subcadena(texto,pos,pos)='i' Entonces
			cv = cv +1
		Fin Si
		reves=Subcadena(texto,pos,pos)+reves
	Fin Para
    Escribir "Frase al revez: ",reves,"  No vocales: ",cv
FinFuncion
// Ingresar datos a un arreglo
Funcion ingresarArreglo(vector por referencia,lim)
	Definir num,pos Como Entero
	Para pos<-1 Hasta lim Hacer
		Escribir "Ingrese numero"
		leer num
		vector[pos]=num
	Fin Para
FinFuncion
// Presenta los datos de un arreglo dada una posicion inicial y final
Funcion presentarArreglo(vector,inicio,lim)
	Definir pos Como Entero
	Si lim > 0 Entonces
		Para pos<-inicio Hasta lim Hacer
			Escribir pos,"[",vector[pos],"]"
		Fin Para
	SiNo
		 Escribir "Ingrese primero datos al arreglo"
	Fin Si
FinFuncion
// buscac un valor en un arreglo y retorna la posicion si lo encuentra sino retorna -1
 Funcion posicion=buscarArreglo(buscado,vector,lim)
	definir pos,encontrado Como Entero
	pos=1;encontrado=0
	mientras encontrado=0 y pos <= lim Hacer
		Si vector[pos]=buscado Entonces
			encontrado=1
		SiNo
			pos = pos + 1
		Fin Si
	Fin Mientras
	Si encontrado=1 Entonces
		posicion=pos
	SiNo
		posicion = -1
	Fin Si
FinFuncion
//ejercicio 4
Funcion vector_mayor
Definir indice,sum,A,B,C Como Entero
Escribir "Cuantos números desea ingresar: "
Leer lim
Dimension A[lim] 	
Escribir "Ingrese los " lim " números para el vector"
Para indice = 1 Hasta lim Con Paso 1 Hacer
	Leer A[indice]
FinPara		
may = A[1]
mayor_indice = 1 
Para indice =1 Hasta lim Con Paso 1 Hacer
	Si A[indice] > may Entonces
		mayor_indice = indice
		may = A[indice]
	FinSi
FinPara
Escribir "El número mayor del Vector es igual a: " (may)
Finfuncion
//ejercicio 5
Funcion copiar_vector	
		Definir x,a,vector1,vector2 Como Entero
		Escribir "ingrese el tamaño del vector"
		leer n
		Dimension vector1[n],vector2[n]
		para x=1 Hasta n Hacer
			Escribir "ingrese numeros ",x
			leer vector1(x)
		FinPara
		a=n
		para x=1 hasta n Hacer
			vector2(x)=vector1(a)
			a=a-1
		FinPara
		para x=1 Hasta n Hacer
			Escribir "vector 2: ",vector2(x)
		FinPara
FinFuncion
//ejercicio 6
Funcion sum_vector
	Definir indice,sum,A,B,C Como Entero
	Escribir "Cuantos números desea ingresar: "
	leer lim
	Dimension A[lim] 
	Dimension B[lim]
	Dimension C[lim]
	Escribir "Ingrese los " lim " números para el vector A"
	Para indice = 1 Hasta lim Con Paso 1 Hacer
		Leer A[indice]
	FinPara
	
	Escribir "Ingrese los " lim " números para el vector B"
	Para indice = 1 Hasta lim Con Paso 1 Hacer
		Leer B[indice]
		Sum = A[indice] + B[indice]
		C[indice] = sum
	FinPara
	Escribir "La suma del Vector A + el Vector B es el resultado del Vector C: "
	Para indice = 1 Hasta lim Con Paso 1 Hacer
		Escribir C[indice]
	FinPara
FinFuncion

//ejercicio 7
Funcion primos_vectores
	Definir A,indice,indice1,cantidad Como Entero
	Escribir "¿Cuantos números desea ingresar?"
	Leer cantidad
	Dimension A[cantidad]	
	Escribir "Digite los " cantidad " números"
	Para indice = 1 Hasta cantidad Con Paso 1 Hacer
		Leer A[indice]
	FinPara
	Para indice = 1 Hasta cantidad Con Paso 1 Hacer
		indice1 = 2
		Mientras (indice1 < A[indice]) & (A[indice] % indice1 <> 0) Hacer
			indice1 = indice1 + 1
		FinMientras
		Si (indice1 = A[indice]) Entonces
			Escribir "El número " A[indice] " es un número primo"
		FinSi
	FinPara
FinFuncion
//ejercucio 8
Funcion prom_vector
	Escribir "Cuantas calificaciones desea ingresar: "
	leer lim
	Escribir "Ingrese las " lim " calificaciones: "	
	Dimension vector[lim]		
	Para posicion = 1 hasta lim Hacer			
		Leer vector[posicion]			
	FinPara		
	Para posicion = 1 hasta lim Hacer			
		Si vector[posicion] >= 70 Entonces				
			sum = vector[posicion] + sum
			cont = cont +1
		FinSi			
	FinPara
	prom = sum / cont
	Escribir "El promedio de las calificaciones mayores a 70 es de : " prom
FinFuncion

//ejercicio10
Funcion cadena_invertida
	palabra=""
	palabra2=""
	k=0
	Escribir "Escribir la palabra"
	leer palabra 
	cantidad=longitud(palabra)
	Escribir "El tamaño es de ",cantidad 
	para i=1 Hasta cantidad Hacer
		palabra2=palabra2+Subcadena(palabra,cantidad-k,cantidad-k)
		k=k+1
	FinPara
	Escribir palabra2	
FinFuncion
//ejercicio12
Funcion cadena_palabras
	Escribir "Escriba un parrafo: "
    Leer parrafo
	parrafo = parrafo + " "
	tamaño = longitud(parrafo)
	p = 1 ; cantidad = 0	
	Dimensión vector[1000]	
	Para a = 1 Hasta tamaño Con Paso 1 Hacer
		Si ( Subcadena(parrafo, a, a) = ' ' ) entonces
			palabra = subcadena(parrafo, p , a - 1 )
			cantidad = cantidad + 1
			p = a + 1
			vector[cantidad] <- palabra			
		FinSi		
	FinPara	
	Para b <- 1 hasta cantidad Con Paso 1 Hacer
		Escribir b ".- " vector[b]
	FinPara
	Escribir "La cantidad de palabras de la frase son : " cantidad	
FinFuncion
//ejercicio13
Funcion buscarencadena(texto,char)
	Definir pos,lon,posicion Como Entero
	posicion=0;
    //Escribir Subcadena(texto,2,3)
	lon = Longitud(texto)
	Dimension A[lon]
	Para pos=1 Hasta lon  Hacer
		A[pos]=Subcadena(texto,pos,pos)
	Fin Para
	Para pos=1 Hasta lon Hacer
		Si A[pos]=char Entonces
			posicion=pos
		FinSi
	FinPara
	Escribir "Caracter: ",char
	Escribir "Posicion: ",posicion
FinFuncion
//ejercicio14
Funcion igualarcadenas(frase1,frase2)
	Definir pos,lon,posicion,check,nlon Como Entero
	posicion=0;check=0;nlon=0;
    //Escribir Subcadena(texto,2,3)
	lon1=Longitud(frase1)
	lon2=Longitud(frase2)
	Si lon1>lon2 Entonces
		nlon=lon1
	SiNo
		nlon=lon2
	FinSi
	Dimension F1[nlon],F2[nlon]
	Para pos=1 Hasta nlon  Hacer
		F1[pos]=Subcadena(frase1,pos,pos)
	Fin Para
	
	Para pos=1 Hasta nlon  Hacer
		F2[pos]=Subcadena(frase2,pos,pos)
	Fin Para
	Para pos=1 Hasta nlon Hacer
		Si F1[pos]=F2[pos] Entonces
			check=1;
		SiNo
			check=0;
		FinSi
	FinPara
	Si check=1 Entonces
		Escribir "Ambas cadenas son iguales"
	SiNo
		Escribir "Las cadenas son diferentes"
	FinSi
FinFuncion
//ejercicio15
Funcion cadena_palindromo
	Definir a,b,x Como Entero
	Definir frase Como Caracter
	Escribir "Escriba una frase: "
	Leer frase
	b= Longitud(frase)
	a=1
	x=0
	Mientras a < b Hacer
		Si Subcadena(frase,a,a) <> Subcadena(frase,b,b)  Entonces
			x = x + 1 
		Fin Si
		a = a + 1
		b = b - 1
	Fin Mientras
	Si  x==0 Entonces
		Escribir " La frase (" frase ") si es palindromo "
	SiNo
		Escribir " La frase (" frase ") no es palindromo "
	Fin Si	
FinFuncion
// Algoritmo principal
Algoritmo Menu
	Definir pos,resp,limite,dato Como Entero
	Definir opcion,opc1,opc2,opc3,frase Como Caracter
	Dimension menuPrincipal[4],menuNumeros[21],menuRazonamiento[11],menuCadenaVectores[16]
    Dimension arreglo[100]	
	limite=0
	// ***** MENU PRINCIPAL ******
	menuPrincipal[1] = "1)Ejercicios Basicos"
	menuPrincipal[2] = "2)Ejercicios Razonamiento"
	menuPrincipal[3] = "3)Ejercicios Cadenas y Vectores"
	menuPrincipal[4] = "4)Salir"
	
	// ***** EJERCICIOS BASICOS ******
	// dado 2 numeros presentar la suma
	menuNumeros[1] = "1)Sumar dos numeros"
	// dado 2 numeros si el primero es  >= al segundo sumarlo sino restarlo
	menuNumeros[2] = "2)Sumar o restar"
	// ingrese 2 numeros con una operacion matematica("+,-,*,/,%,^") 
	// realizar y presentar la respuesta de la operacion matematica
	menuNumeros[3] = "3)Caculadora"
	// presentar el mayor de 2 numeros ingresados
	menuNumeros[4] = "4)Mayor de dos numeros"
	// presentar el menor de 3 numeros ingresados
	menuNumeros[5] = "5)Mayor de tres numeros"
	// La despensa "El Baraton", a todas las ventas que pasen de $100,
	//se les aplicará un  descuento del 10%, a  todo los demás se les aplicará sólo el 5% 
	// luego del recargo del iva del 12%
	menuNumeros[6] = "6)Comprar productos"
	// Ingresar el nombre,horas trabajadas, valor hora, horas50 y horas100 de sobretiempo
	// se pide calcular el rol del pago del trabajor dado los siguientes calculos.
	// sueldo del trabajador(horasTrajabadas por el valorHora)
	// el sobretiempo=(horas50*1.5+horas100*2)*Valor
	// total ingreso = sueldo+sobretiempo
	// descuento= totalingresos*9.35%
	// liquido= totalingresos - descuento
	menuNumeros[7] = "7)Pago de Sueldos"
	// dada dos notas calcular el promedio y presentar el mensaja "Aproboado" si el promedio
	// mayor 70 y reprobado si es menor que 70
	menuNumeros[8] = "8)Notas de Alumnos"
	// dado un numero indicar si es positivo o negativo
	menuNumeros[9] = "9)Positivo/Negativo"
	// dado un numero indicar si es par o impar
	menuNumeros[10] = "10)Par e Impar"
	// dado dos numeros indicar si el numero1 es multiplo del numero2
	menuNumeros[11] = "11)Multiplo de cualquier Numero"
	// dada una secuencia de numeros presentar el mayor y el menor de esa esa secuencia
	menuNumeros[12] = "12)El Mayor y Menor de una secuencia de numeros"
	// dada una secuencia de numeros presentar cuantos son numeros positivos
	menuNumeros[13] = "13)Positivos de una secuencia de numeros"
	// dada una serie de numeros presentar la suma de lo numeros multiplos de 5
	menuNumeros[14] = "14)Suma de los multiplos de cinco de una serie de numeros"
	// presentar los numeros pares desde 2 hasta N
	menuNumeros[15] = "15)Generar y presentar los Numeros pares del 2 a N"
	// dada una serie de numeros presente el numero siempre y cuando sea negativo
	// y antes de finalizar presente la cantidad, la suma y el promedio de dichos numeros negativos
	menuNumeros[16] = "16)Cantidad, Suma y Promedio de numeros negativos de una serie"
	// dado una serie de numeros presentar el promedio de los numeros que sean >= 100 and <=500 
	menuNumeros[17] = "17)Serie promedio de rango de numeros"
	// Ingrese un numero si este es postivo finalice sino vuelva a ingresarlo
	menuNumeros[18] = "18)Validar que un numero sea positivo"
	// dado dos numeros base y exponente. calcular la base elevada al exponente 
	menuNumeros[19] = "19)Base y exponente"
	// dada una serie de numeros calcular los factoriales de dichos numero la serie termina
	// cuando un numero de la serie sea igual a cero.
	menuNumeros[20] = "20)Serie Factoriales"
	menuNumeros[21] = "21)Salir"	
	// ******EJERCICIOS DE RAZONAMIENTO SIN USAR CADENAS Y VECTORES*******
	// contar los digitos de cualquier numero: ej: 342 = 3 digitos
	menuRazonamiento[1] = "1)Cuantos Digitos tiene un Numero"
	// ejemplo: binario= 1111101000  ==> 1000 (decimal) Respuesta = 3E8 (hexadecimal)
	menuRazonamiento[2] = "2)Covertir de Base 2 a Base 10"
	// ejemplo: binario= 1100100  ==> 100 (decimal) => 
	menuRazonamiento[3] = "3)Convertir de Base 2 a Base 16 pasando por Base 10"
	// ejemplo Si n=8 => La serie de fibonacci es = 0 1 1 2 3 5 8 13
	menuRazonamiento[4] = "4)Serie de fibonacci hasta N"
	// ejemplo si numero=10 ==> resp= 1,2,5
	menuRazonamiento[5] = "5)Divisores de un Numero"
	// cuando los divisores de un numero es igual al numero se dice que ese numero es perfecto
	// si numero es 6 los divisores son 1,2,3 sumados igual a 6 es igual al numero ==> es perfecto
	menuRazonamiento[6] = "6)Numero Perfecto"
	// un numero es primo cuando no tiene divisores excepto el 1 y el propio numero
	// ejemplo 5 no tiene divsores es "primo"  9 tiene como divisor al 3 por tanto no es "primo"
	menuRazonamiento[7] = "7)Numero Primo"
	// dos numeros son amigos si la suma de los divisores del primer numero es = a la suma de los
	// divisores del segundo numero Eje: numero=6 (1+2+3)=6 numero 25(1+5)=6 ==> 6=6 son amigos 
	menuRazonamiento[8] = "8)Verificar si dos numeros son Amigos"
	// dos numeros son primos gemelos si ambos numeros son primos en valor absoluto y la resta de
	// los 2 numeros es == 2 eje: 11 y 13 abs(11-13)==2
	menuRazonamiento[9] = "9)Verificar si dos Numeros son Primos Gemelos"
	// por cada numero de una serie verifique si es primo, si es primo contarlo
	menuRazonamiento[10] = "10)De una serie de numeros cuantos son Primos"
	menuRazonamiento[11] = "11)Salir"
	
	// ****** EJERCICIOS DE CADENAS Y VECTORES *******
	// dado n valores ingresarlos a un arreglo
	menuCadenaVectores[1] = "1)llenar un arreglo de numeros"
	// recorrer un arreglo y presentarlo uno por uno
	menuCadenaVectores[2] = "2)Presentar los elementos de un arreglo"
	// buscar el dato y presentar la posicion en que se encuntra el dato en el arreglo
	menuCadenaVectores[3] = "3)Buscar un dato en un arreglo"
	// Presentar el mayor de los datos de un arreglo
	menuCadenaVectores[4] = "4)Elemento Mayor de un arreglo"
	// Dado un arreglo copie los datos en otro de atras para delante 
	menuCadenaVectores[5] = "5)Copiar los datos de un arreglo en otro invertido"
	// Dado los arreglos1 y arreglos 2 sumarlos valor por valor del arreglo1 y arreglo2
	// y asigmarlo en el arreglo3(los tres arreglos deben tener la misma longitud)
	menuCadenaVectores[6] = "6)Dados los arreglos arreglo1[] y arreglo2[] Sumarlos en al arreglo Suma[]"
	// de una serie de numeros solo guardar en un arreglo los nymeros primos
	menuCadenaVectores[7] = "7)Dado N numeros guardar en un arreglo los numeros primos"
	// dadas las notas guardades en un arreglos obtener el promedio de las notas >= 70
	menuCadenaVectores[8] = "8)Dadas los datos de un arreglo obtener el promedio de las notas >=> 70"
	// presentar caracter por caracter de una cadena
	menuCadenaVectores[9] = "9)Dada una cadena presentarla caracter por caracter"
	// presentar  una cadena al reves
	menuCadenaVectores[10] = "10)Dada una cadena presentarla invertida"
	// contar las vocales de jque tiene una cadena cualquiera
	menuCadenaVectores[11] = "11)Dada una cadena indicar cuantos vocales tiene"
	// contar las palabras de una cadena
	menuCadenaVectores[12] = "12)Dada una cadena indicar cuantos palabras tiene"
	// buscar si un caracteer ingresado se encuentra en una cadena si es asi presentarMenu
	// la posicion en que se encuntra ese caracter en la cedena caso contrario presentar -1
	menuCadenaVectores[13] = "13)presentar la posicion de un caracter buscado dentro de una cadena"
	// comparar 2 cadenas csracter por catacter e indicar si son iguales o no
	menuCadenaVectores[14] = "14)Dadas dos cadenas indicar si son iguales caracter por caracter"
	// una cadena es palaindorma si se lee de la misma forma de izquierda a derecha 
	// ejemplo "ana"
	menuCadenaVectores[15] = "15)Indicar si una cadena es palindroma"
	menuCadenaVectores[16] = "16)Salir"
	// cuando se escoja la opcion 4 termina el programa
	opcion=''
	Mientras opcion <> "4" Hacer
		Borrar Pantalla
		opcion = presentarMenu("********** M E N U   P R I N C I P A L **********",menuPrincipal,4)
		Borrar Pantalla
		Segun opcion Hacer
			"1":
				opc1=""
				Mientras opc1<>"21" Hacer
					opc1= presentarMenu("********** M E N U  E J E R C I C I O S  B A S I C O S **********",menuNumeros,21)
					Borrar Pantalla
					Segun opc1 Hacer
						"1":
							Escribir "Sumar Dos  Numeros"
							escribir "Digite un número"
							leer num1 
							escribir "Digite otro número"
							leer num2
							suma(num1,num2)
							Escribir "Regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"2":
							Escribir "Suma y Resta de dos numeros"
							sumayresta
							Escribir "Regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"3":
							Escribir "Calculadora"
							Escribir "Ingrese Operacion[+,-,*,/,%,^]: " Sin Saltar
							Leer ope
							Escribir "Ingrese un número: " Sin Saltar
							Leer num1
							Escribir "Ingrese otro número2: " Sin Saltar
							Leer num2
							calculadora(ope,num1,num2)
							Escribir "Regresando al menu principal porfavor espere....."
							Esperar 2 Segundos
							Borrar Pantalla
						"4":
							Escribir "Mayor de dos numeros"
							num_mayor
							Escribir "Regresando al menu principal porfavor espere...."
							Esperar 5 Segundos
							Borrar Pantalla
						"5":
							Escribir "Mayor de tres numeros"
							tres_mayores
							Escribir "Regresando al menu principal porfavor espere...."
							Esperar 5 Segundos
							Borrar Pantalla
						"6":
							Escribir "Comprar productos"
							descuento_de_ropa
							Escribir "Regresando al menu principal porfavor espere......"
							Esperar 5 Segundos
							Borrar Pantalla
						"7":
							Escribir "Pago de Sueldos"
							sueldo_trabajadores
							Escribir "Regresando al menu principal porfavor espere...."
							Esperar 5 Segundos
							Borrar Pantalla
						"8":
							Escribir "Notas de Alumnos"
							promedio
							Escribir "Regresando al menu principal porfavor espere...."
							Esperar 5 Segundos
							Borrar Pantalla
						"9":
							Escribir "Positivo/Negativo"
							positivo_negativo
							Escribir "Regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"10":
							Escribir "Par e Impar"
							par_impar
							Escribir "Regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"11":
							Escribir "Multiplo de cualquier Numero"
							multiplos
							Escribir "Regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"12":
							Escribir "El Mayor y Menor de una secuencia de numeros"
							mayor_y_menor
							Escribir "Regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"13":
							Escribir "Positivos de una secuencia de numeros"
							positivos 
							Escribir "Regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"14":
							Escribir "Suma de los multiplos de cinco de una serie de numeros"
							secuencia_sumaymultiplo_5
							Escribir "Regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"15":
							Escribir "Generar y presentar los Numeros pares del 2 a N"
							pares2_n
							Escribir "Regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"16":
							Escribir "Cantidad, Suma y Promedio de numeros negativos de una serie"
							sumaypromedio_de_negativos
							Escribir "Regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"17":
							Escribir "Serie promedio de rango de numeros"
							promedio_de_100_500
							Escribir "Regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"18":
							Escribir "Validar que un numero sea positivo"
							positivo_numero
							Escribir "Regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"19":
							Escribir "Base y exponente"
							base_exponente
							Escribir "Regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"20":
							Escribir "Serie Factoriales"
							factorial_hasta_0
							Escribir "Regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"21":
							Escribir "Regresando Al Menu Principal..."
							Esperar 3 Segundos
							Borrar Pantalla
						De Otro Modo:
							Escribir "Opcion Incorrecta"
							Esperar 3 Segundos
					Fin Segun
				Fin Mientras
			"2":
				opc2=""
				Mientras opc2<>"11" Hacer
					opc2= presentarMenu("********** M E N U  E J E R C I C I O S  D E  RAZONAMIENTO **********",menuRazonamiento,11)
					Borrar Pantalla
					Segun opc2 Hacer
						"1":
							Escribir "Cantidad de Digitos de un Numero"
							digitos_de_numero
							Escribir "regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"2":
							Escribir "2)Covertir de Base 2 a Base 10"
							binario_a_decimal
							Escribir "regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"3":
							Escribir "3)Convertir de Base 2 a Base 16 pasando por Base 10"
							Definir decimal,base Como Entero
							Definir solucion Como Caracter
							Definir r,b,oc,h Como Caracter
							decimal <- 0; solucion <- ''; base <- 0; b <- 'b'; oc <- 'o'; h <- 'h'
							// entrada 
							Escribir 'ingresa numero binario o decimal '
							Leer decimal
							Escribir 'covertir a base ?'
							Escribir 'binario (B)'
							Escribir 'octal (O)'
							Escribir 'hexadecimal(H)'
							Leer r
							Si r=b Entonces
								base <- 2
							SiNo
								Si r=oc Entonces
									base <- 8
								SiNo
									base <- 16
								FinSi
							FinSi
							Escribir conversordesdedecimal(decimal,base)
							Escribir "regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"4":
							Escribir "4)Serie de fibonacci hasta N"
							fibonacci 
							Escribir "regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"5":
							Escribir "5)Divisores de un Numero"
							divisores_de_un_numero
							Escribir "regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"6":
							Escribir "6)Numero Perfecto"
							numero_perfecto
							Escribir "regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"7":
							Escribir "Ejercicio Numero Primo"
							Escribir "Ingrese Numero: " Sin Saltar
							Leer num
							resp=primo(num)
							Si resp=1 Entonces
								Escribir num," Es Primo"
							SiNo
								Escribir num," No Es Primo"
							Fin Si
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 5 Segundos
							Borrar Pantalla
						"8":
							Escribir "8)Verificar si dos numeros son Amigos"
							num_perfectos
							Escribir "regresando al menu principal porfavor espere....."
							Esperar 5 Segundos
							Borrar Pantalla
						"9":
							Escribir "Ejercicio Primos Gemelos"
							Escribir "Ingrese Numero1: " Sin Saltar
							Leer num1
							Escribir "Ingrese Numero2: " Sin Saltar
							Leer num2
							Si primo(num1)=1 y primo(num2)=1 y abs(num1-num2)=2 Entonces
								Escribir num1," y ",num2," Son Primos Gemelos"
							SiNo
								Escribir num1," y ",num2," No Son Primos Gemelos"
							Fin Si
							resp=primo(num)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 5 Segundos
							Borrar Pantalla
						"10":
							c=0;
							Escribir "De una serie de numeros cuantos son Primos"
							Escribir "Defina el limite de la secuencia: " Sin Saltar
							Leer limite
							Para c=1 Hasta limite Con Paso 1 Hacer
								Escribir "Ingrese un numero :" Sin Saltar
								Leer num
								resp=primo(num)
								Si resp=1 Entonces
									cprimo=cprimo+1
								Fin Si
							FinPara
							Escribir "La cantidad de numeros primos ingresados es: ",cprimo
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 5 Segundos
							Borrar Pantalla
						"11":
							Escribir "Regresando Al Menu Principal..."
							Esperar 5 Segundos
							Borrar Pantalla							
						De Otro Modo:
							Escribir "Opcion Incorrecta"
							Esperar 5 Segundos
					Fin Segun
				Fin Mientras
			"3":
				opc3=""
				Mientras opc3<>"16" Hacer
					opc3= presentarMenu("********** M E N U  E J E R C I C I O S  C A D E N A S  Y  V E C T O R E S **********",menuCadenaVectores,16)
					Borrar Pantalla
					Segun opc3 Hacer
						"1":
							Escribir "Ingresar Valores a un Arreglo"
							Escribir "Ingrese cantidad de Elementos:" Sin Saltar
							Leer limite
							ingresarArreglo(arreglo,limite)
							Esperar 5 Segundos
							Borrar Pantalla
						"2":
							Escribir "Presentar los Valores de un Arreglo"
							presentarArreglo(arreglo,1,limite)
							Esperar 5 Segundos
							Borrar Pantalla	
						"3":
							Escribir "Buscar un dato en un Arreglo"
							presentarArreglo(arreglo,1,limite)
							Escribir "Ingrese el dato a buscar en el arreglo"
							Leer dato
							pos = buscarArreglo(dato,arreglo,limite)
							Si pos > 0 Entonces
								Escribir dato," Se encuentra en la posicion: ",pos, " del arreglo"
							SiNo
								Escribir dato," No se encuentra en el arreglo"
							Fin Si
							Esperar 5 Segundos
							Borrar Pantalla	
							
						"4":Escribir "Elemento mayor de un arreglo"
							vector_mayor
							Escribir "Regresando al menu principal porfavor espere...."							
							Esperar 5 Segundos
							Borrar Pantalla
						"5":Escribir "Copiar los datos de un arreglo en otro invertido"
							copiar_vector
							Escribir "Regresando al menu principal porfavor espere...."							
							Esperar 5 Segundos
							Borrar Pantalla
						"6":Escribir "Dados los arreglos arreglo1[] y arreglo2[] Sumarlos en al arreglo Suma[]"
							sum_vector
							Escribir "Regresando al menu principal porfavor espere...."							
							Esperar 5 Segundos
							Borrar Pantalla
						"7":Escribir "Dado N numeros guardar en un arreglo los numeros primos"
							primos_vectores
							Escribir "Regresando al menu principal porfavor espere...."							
							Esperar 5 Segundos
							Borrar Pantalla
						"8":Escribir "Dadas los datos de un arreglo obtener el promedio de las notas >=> 70"
							prom_vector
							Escribir "Regresando al menu principal porfavor espere...."							
							Esperar 5 Segundos
							Borrar Pantalla
						"9":Escribir "Dada una cadena presentarla caracter por caracter"
							Escribir "Ingrese frase:" Sin Saltar
							Leer frase
							presentarCadena(frase)
							Esperar 5 Segundos
							Borrar Pantalla
						"10":Escribir "Dada una cadena presentarla invertida"
							cadena_invertida
							Escribir "Regresando al menu principal porfavor espere...."							
							Esperar 5 Segundos
							Borrar Pantalla
							
						"11":Escribir "Dada una cadena indicar cuantos vocales tiene"
							Escribir "Ingrese frase:" Sin Saltar
							Leer frase
							vocales(frase)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 5 Segundos
							Borrar Pantalla
						"12":Escribir "Dada una cadena indicar cuantos palabras tiene"
							cadena_palabras
							Escribir "Regresando al menu principal porfavor espere...."							
							Esperar 5 Segundos
							Borrar Pantalla
						"13":Escribir "Presentar la posicion de un caracter buscado dentro de una cadena"
							Escribir "Ingrese frase:" Sin Saltar
							Leer frase
							Escribir "Ingrese el caracter a buscar: " Sin Saltar
							Leer char
							buscarencadena(frase,char)
							Escribir "Regresando al menu principal porfavor espere...."	
							Esperar 5 Segundos
							Borrar Pantalla
						"14":Escribir "Dadas dos cadenas indicar si son iguales caracter por caracter"
							Escribir "Ingrese frase1:" Sin Saltar
							Leer frase1
							Escribir "Ingrese frase2:" Sin Saltar
							Leer frase2
							igualarcadenas(frase1,frase2)
							Escribir "Regresando al menu principal porfavor espere...."	
							Esperar 5 Segundos
							Borrar Pantalla
						"15":Escribir "Indicar si una cadena es palindroma"
							cadena_palindromo
							Escribir "Regresando al menu principal porfavor espere...."							
							Esperar 5 Segundos
							Borrar Pantalla
						"16":
							Escribir "Regresando Al Menu Principal..."
							Esperar 1 Segundos
							
						De Otro Modo:
							Escribir "Opcion Incorrecta"
							Esperar 3 Segundos
					Fin Segun
				Fin Mientras
			"4":
				Escribir "Gracias por usar el sistema"	
			De Otro Modo:
				Escribir "Opcion incorrecta"
		Fin Segun
    Fin Mientras
FinAlgoritmo
