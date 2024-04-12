![Banner](./images/Banner_ppal.png)
# Módulo 1 - Proyecto 1
## ¡Bienvenidos al proyecto "Algoritmo de Costos"!

## Tabla de Contenidos
* [1. Desafío](#1-Desafío)
* [2. Análisis](#2-Análisis)
* [3. Supuestos para proyecto](#3-Supuestos-para-proyecto)
* [4. Pseudocódigo y explicaciones generales](#4-Pseudocódigo-y-explicaciones-generales)
* [5. Conclusiones](#5-Conclusiones)

****
## Desarrollo

### 1. Desafio
Generar algoritmo en pseudocódigo PSeInt simulando un sistema de cálculo de costo de un producto, considerando de base el precio original y un porcentaje de descuento. Se debe cumplir con los siguientes requerimientos:
- Lectura de precio original
- Aplicación de descuento, si el cliente posee cupón de descuento
- Aplicación de impuestos al producto
- Considerar si el cliente aquiere más de un artículo, se aplicará un descuento por cantidad
- Cálculo de costo de envío en base a dos variables: destino y peso del paquete
- Cálculo de costo final de producto considerando componentes de: descuento, impuestos, descuento por cantidad y costo de envío.
- Mostrar costo final del producto, incluyendo desglose de los componentes: descuentos, impuestos, descuento por cantidad y costo de envío.

  ****
  
### 2. Análisis
En base al desafío planteado, se inicia el análisis y preparación del pseudocódigo considerando los requisitos como guía basal para la construcción del mismo, lo cuál debe cumplir con:
- Lectura del precio original
- Lectura de porcentaje de descuento aplicado
- Cálculo de precio final de producto, post descuento
- Muestra de precio final de producto

Adicionalmente, se debe considerar los factores de: Cantidad de productos, impuesto, peso del paquete y lugar de envío.
Dentro de la estructura del Pseudocódigo, se debe tomar por bloques de lectura, y a su vez que permita obtener cálculos que posteriormente, una vez ejecutado el programa entrege los valores desglosados por conceptos principales.

****

### 3. Supuestos para proyecto
En  particular aqui se declaran los supuestos en donde se define:
- La idea será relacionada a una *Tienda online de venta de plantas*
- Si el cliente no posee un cupón de descuento, se le otorgará uno de 10% por su primera compra
- Para costo de envío, se considera como variable unidimensional los costos de envío considerando 4 opciones, a su vez se considera la variable de peso del paquete en Kilogramos.
- Existe un descuento adicional por cantidad, el cual se considera de un 5%


![img tienda de plantas](./images/Proyecto_plantas.png)

****

### 4. Pseudocódigo y explicaciones generales

1.Inicialmente en PSeInt se realiza la declaración de variables, como reales. Algunas de ellas son:
- precioOriginal
- descuento
- valorDescuento
- impuesto
- costoimpuesto
- cantidad
- costoEnvio
- pesoPaquete
- costoFinal

 Luego se procede a solicitar el ingreso de variables por parte del cliente, incluyendo comandos de lectura. En esta etapa se ejecutan cálculos y condiciones, que permitirá el almacenaje de los valores que posteriormente se desplegarán al finalizar la ejecución del programa.
En términos de estructura del programa, PSeInt nos despliega el siguiente diagrama de flujo:
  ![img diagrama de flujo](./images/Diagrama_flujo.png) 

 En base al ejemplo presentado en el desafío y las variables entregadas, se procede a realizar las pruebas y se obtiene el resultado esperado. Se demuestra a continuación:
  ![img resultado de ejemplo](./images/Ejemplo.png)

[Se incluye Link para visualización y prueba del programa en base al ejemplo](./CalcularCostoFinalProducto_Final_ATC.psc)
  
  ****
  
  ### 5. Conclusiones
  *En desarrollo*

  ****

**¡Gracias!**

