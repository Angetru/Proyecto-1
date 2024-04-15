Algoritmo CalcularCostoFinalProducto
		// Primero definir variables
		Definir precioOriginal, descuento, valorDescuento, impuesto, costoImpuesto, cantidad, costoEnvio, pesoPaquete, costoFinal Como Real
		
		// Se solicita ingreso de datos
		Escribir "¡Gracias por visitar a Paraíso Floral! Ingrese el precio original del producto: "
		Leer precioOriginal
		
		//Se agrega un condicional para verificar % de descuento del cliente. Sino tiene descuento, se le otorga uno de 10%
		Escribir "¿Tiene un cupón de descuento? (Si/No): "
		Leer respuestaCupon
		Si respuestaCupon = "Si" Entonces
			Escribir "Ingrese el valor de porcentaje del descuento: "
			Leer descuento
			valorDescuento <- precioOriginal - (precioOriginal*descuento)/100
		Sino
			descuento <- 10
			Escribir "¡Atención! Por ser tu primera compra, tienes un 10% de descuento"
			valorDescuento <- precioOriginal - (precioOriginal*descuento)/100
		FinSi
		
		Escribir "Ingrese el valor de porcentaje de impuesto (IVA)"
		Leer impuesto
		costoImpuesto <- valorDescuento *((impuesto/100)+1)
		
				
		Escribir "Ingrese la cantidad de plantas a comprar: "
		Leer cantidad
				
		// Se define el arreglo unidimensional para almacenar los costos de envío en base a destino
		Dimension costosEnvio[4]
		// Se inicializa los costos de envío para cada destino
		costosEnvio[1] <- 5
		costosEnvio[2] <- 2
		costosEnvio[3] <- 7
		costosEnvio[4] <- 20
		
		// Se solicita al usuario que ingrese el peso del paquete en Kg.
		Escribir "Ingrese el peso del paquete en kilogramos:"
		Leer pesoPaquete
		
		// Se solicita al usuario que ingrese el destino del paquete en base a 4 opciones
		Escribir "Ingrese el número de destino del paquete: Opción 1= Zona Norte; Opción 2= Zona Centro; Opción 3= Zona Sur) y Opción 4= Envío Internacional:"
		Leer destino
		
		// Se verifica que el destino ingresado sea válido
		Mientras destino < 1 O destino > 4 Hacer
			Escribir "Destino no válido. Ingrese un destino válido (1, 2, 3 ó 4):"
			Leer destino
		FinMientras
		
		// Se calcula el costo de envío, en esta instancia se declara como costo fijo 10 pesos, además de la combinación del peso del paquete y costo de envío por destino.
		costoEnvio <- 10 + pesoPaquete * costosEnvio[destino]
		
		// Se procecde a calcular descuento por cantidad, mayor a 1
		Si cantidad > 1 Entonces
			// Definir porcentaje de descuento por cantidad
			Definir porcentajeDescuentoPorCantidad Como Real
			porcentajeDescuentoPorCantidad <- 0.05 // 5% de descuento por cada artículo adicional
			descuentoPorCantidad <- costoImpuesto * (1-porcentajeDescuentoPorCantidad * (cantidad - 1))
			Sino descuentoPorCantidad <- 0// No hay descuento por cantidad si se compra solo un artículo
				Escribir "¡Lástima, te estás perdiendo un descuento por cantidad adicional!"
			Fin Si	
		
		// Para el cálculo del costo final del producto, este se compone de: el descuento por cantidad, la cantidad que llevará el cliente, además de la variable de costo de envío, ya calculada previamente.
		costoFinal <- descuentoPorCantidad*cantidad + costoEnvio
		
		
		// Despliegue de costo final y desglose por concepto solicitado
		Escribir "El costo final del producto es: $", costoFinal
		Escribir "Desglose del costo final por los siguientes conceptos:"
		Escribir " - Cupón de descuento: $", valorDescuento
		Escribir " - Impuestos: $", costoImpuesto
		Escribir " - Descuento por cantidad: $", descuentoPorCantidad
		Escribir " - Costo de envío: $", costoEnvio
		Escribir "¡Gracias por tu visita y compra!"
		
		//Escrito por Angélica Trujillo - Programa FullStack C-14 UDD
		//Proyecto 1 - Algoritmo de costos
FinAlgoritmo
