Algoritmo CalcularCostoFinalProducto
		// Definir variables
		Definir precioOriginal, descuento, valorDescuento, impuesto, costoImpuesto, cantidad, costoEnvio, pesoPaquete, costoFinal Como Real
		
		// Entrada de datos
		Escribir "Ingrese el precio original del producto: "
		Leer precioOriginal
		
		Escribir "�El cliente tiene un cup�n de descuento? (Si/No): "
		Leer respuestaCupon
		Si respuestaCupon = "Si" Entonces
			Escribir "Ingrese el valor de porcentaje del descuento: "
			Leer descuento
			valorDescuento <- precioOriginal - (precioOriginal*descuento)/100
		FinSi
		
		Escribir "Ingrese el valor de porcentaje de impuesto (IVA)"
		Leer impuesto
		costoImpuesto <- valorDescuento *((impuesto/100)+1)
		
				
		Escribir "Ingrese la cantidad de art�culos: "
		Leer cantidad
		
		Escribir "Ingrese el peso del paquete en kg: "
		Leer pesoPaquete
		
		// Para calculo de costoEnv�o se considera como costo fijo de env�o un valor $100 de base m�s $2 por el peso del paquete
		Escribir "Ingrese destino de env�o: "
		Leer destino
		costoEnvio <- 10 + 2*pesoPaquete
		
		// Calcular descuento por cantidad
		Si cantidad > 1 Entonces
			// Definir porcentaje de descuento por cantidad
			Definir porcentajeDescuentoPorCantidad Como Real
			porcentajeDescuentoPorCantidad <- 0.05 // 5% de descuento por cada art�culo adicional
			descuentoPorCantidad <- costoImpuesto * (1-porcentajeDescuentoPorCantidad * (cantidad - 1))
		SiNo
			descuentoPorCantidad <- 0 // No hay descuento por cantidad si se compra solo un art�culo
		FinSi
		
		// Calcular costo final del producto
		costoFinal <- descuentoPorCantidad*2 + costoEnvio
		
		
		// Mostrar resultado
		Escribir "El costo final del producto es: ", costoFinal
		Escribir "Desglose:"
		Escribir " - Descuento: ", valorDescuento
		Escribir " - Impuestos: ", costoImpuesto
		Escribir " - Descuento por cantidad: ", descuentoPorCantidad
		Escribir " - Costo de env�o: ", costoEnvio
		Escribir "�Gracias por tu compra!"
FinAlgoritmo
