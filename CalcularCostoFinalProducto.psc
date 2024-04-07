Algoritmo CalcularCostoFinalProducto
		// Definir variables
		Definir precioOriginal, descuento, valorDescuento, impuesto, costoImpuesto, cantidad, costoEnvio, pesoPaquete, costoFinal Como Real
		
		// Entrada de datos
		Escribir "Ingrese el precio original del producto: "
		Leer precioOriginal
		
		Escribir "¿El cliente tiene un cupón de descuento? (Si/No): "
		Leer respuestaCupon
		Si respuestaCupon = "Si" Entonces
			Escribir "Ingrese el valor de porcentaje del descuento: "
			Leer descuento
			valorDescuento <- precioOriginal - (precioOriginal*descuento)/100
		FinSi
		
		Escribir "Ingrese el valor de porcentaje de impuesto (IVA)"
		Leer impuesto
		costoImpuesto <- valorDescuento *((impuesto/100)+1)
		
				
		Escribir "Ingrese la cantidad de artículos: "
		Leer cantidad
		
		Escribir "Ingrese el peso del paquete en kg: "
		Leer pesoPaquete
		
		// Para calculo de costoEnvío se considera como costo fijo de envío un valor $100 de base más $2 por el peso del paquete
		Escribir "Ingrese destino de envío: "
		Leer destino
		costoEnvio <- 10 + 2*pesoPaquete
		
		// Calcular descuento por cantidad
		Si cantidad > 1 Entonces
			// Definir porcentaje de descuento por cantidad
			Definir porcentajeDescuentoPorCantidad Como Real
			porcentajeDescuentoPorCantidad <- 0.05 // 5% de descuento por cada artículo adicional
			descuentoPorCantidad <- costoImpuesto * (1-porcentajeDescuentoPorCantidad * (cantidad - 1))
		SiNo
			descuentoPorCantidad <- 0 // No hay descuento por cantidad si se compra solo un artículo
		FinSi
		
		// Calcular costo final del producto
		costoFinal <- descuentoPorCantidad*2 + costoEnvio
		
		
		// Mostrar resultado
		Escribir "El costo final del producto es: ", costoFinal
		Escribir "Desglose:"
		Escribir " - Descuento: ", valorDescuento
		Escribir " - Impuestos: ", costoImpuesto
		Escribir " - Descuento por cantidad: ", descuentoPorCantidad
		Escribir " - Costo de envío: ", costoEnvio
		Escribir "¡Gracias por tu compra!"
FinAlgoritmo
