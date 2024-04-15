Algoritmo CalcularCostoFinalProducto
		// Primero definir variables
		Definir precioOriginal, descuento, valorDescuento, impuesto, costoImpuesto, cantidad, costoEnvio, pesoPaquete, costoFinal Como Real
		
		// Se solicita ingreso de datos
		Escribir "�Gracias por visitar a Para�so Floral! Ingrese el precio original del producto: "
		Leer precioOriginal
		
		//Se agrega un condicional para verificar % de descuento del cliente. Sino tiene descuento, se le otorga uno de 10%
		Escribir "�Tiene un cup�n de descuento? (Si/No): "
		Leer respuestaCupon
		Si respuestaCupon = "Si" Entonces
			Escribir "Ingrese el valor de porcentaje del descuento: "
			Leer descuento
			valorDescuento <- precioOriginal - (precioOriginal*descuento)/100
		Sino
			descuento <- 10
			Escribir "�Atenci�n! Por ser tu primera compra, tienes un 10% de descuento"
			valorDescuento <- precioOriginal - (precioOriginal*descuento)/100
		FinSi
		
		Escribir "Ingrese el valor de porcentaje de impuesto (IVA)"
		Leer impuesto
		costoImpuesto <- valorDescuento *((impuesto/100)+1)
		
				
		Escribir "Ingrese la cantidad de plantas a comprar: "
		Leer cantidad
				
		// Se define el arreglo unidimensional para almacenar los costos de env�o en base a destino
		Dimension costosEnvio[4]
		// Se inicializa los costos de env�o para cada destino
		costosEnvio[1] <- 5
		costosEnvio[2] <- 2
		costosEnvio[3] <- 7
		costosEnvio[4] <- 20
		
		// Se solicita al usuario que ingrese el peso del paquete en Kg.
		Escribir "Ingrese el peso del paquete en kilogramos:"
		Leer pesoPaquete
		
		// Se solicita al usuario que ingrese el destino del paquete en base a 4 opciones
		Escribir "Ingrese el n�mero de destino del paquete: Opci�n 1= Zona Norte; Opci�n 2= Zona Centro; Opci�n 3= Zona Sur) y Opci�n 4= Env�o Internacional:"
		Leer destino
		
		// Se verifica que el destino ingresado sea v�lido
		Mientras destino < 1 O destino > 4 Hacer
			Escribir "Destino no v�lido. Ingrese un destino v�lido (1, 2, 3 � 4):"
			Leer destino
		FinMientras
		
		// Se calcula el costo de env�o, en esta instancia se declara como costo fijo 10 pesos, adem�s de la combinaci�n del peso del paquete y costo de env�o por destino.
		costoEnvio <- 10 + pesoPaquete * costosEnvio[destino]
		
		// Se procecde a calcular descuento por cantidad, mayor a 1
		Si cantidad > 1 Entonces
			// Definir porcentaje de descuento por cantidad
			Definir porcentajeDescuentoPorCantidad Como Real
			porcentajeDescuentoPorCantidad <- 0.05 // 5% de descuento por cada art�culo adicional
			descuentoPorCantidad <- costoImpuesto * (1-porcentajeDescuentoPorCantidad * (cantidad - 1))
			Sino descuentoPorCantidad <- 0// No hay descuento por cantidad si se compra solo un art�culo
				Escribir "�L�stima, te est�s perdiendo un descuento por cantidad adicional!"
			Fin Si	
		
		// Para el c�lculo del costo final del producto, este se compone de: el descuento por cantidad, la cantidad que llevar� el cliente, adem�s de la variable de costo de env�o, ya calculada previamente.
		costoFinal <- descuentoPorCantidad*cantidad + costoEnvio
		
		
		// Despliegue de costo final y desglose por concepto solicitado
		Escribir "El costo final del producto es: $", costoFinal
		Escribir "Desglose del costo final por los siguientes conceptos:"
		Escribir " - Cup�n de descuento: $", valorDescuento
		Escribir " - Impuestos: $", costoImpuesto
		Escribir " - Descuento por cantidad: $", descuentoPorCantidad
		Escribir " - Costo de env�o: $", costoEnvio
		Escribir "�Gracias por tu visita y compra!"
		
		//Escrito por Ang�lica Trujillo - Programa FullStack C-14 UDD
		//Proyecto 1 - Algoritmo de costos
FinAlgoritmo
