# Cierre de Semestre	
## 09/01/2020
**Ejercicio 1**

Primero se usa la línea de comando "ejemplos = sample(c("positivo", "negativo", "neutros"), 100, replace = TRUE)" esto crea una muestra con 100 elementos aleatorios, que pueden ser "positivo", "negativo" y/o "neutro", para contar la cantidad de cada uno de los elementos utilizo el comando "table(ejemplos)"

**Ejercicio 2**

Si volvemos a correr los comandos anteriores, los resultados variarán, generando distintos valores para cada uno de los elementos, sin embargo si previamente utilizamos el comando set.seed() los resultados dejarán de variar, se generará una especia de réplica de "ejemplos" y al utilizar table() la cantidad de elementos repetidos dejará de variar.

 
**Ejercicio 3**

Los valores "positivo", "negativo" y "neutros" generados a partir de set.seed(66) generan el resultado: negativo 20, neutros 20, positivo 26, el impacto de considerar los neutros dependerá de los supuestos asociados a ellos, suponiendo que las noticias de caracter positivo si preveen una crisis, y las de caracter negativo no preveen una crisis, podriamos considerar que los neutros tampoco preveen crisis, de tal forma que habrian 40 noticias que no preveen crisis y solo 26 que si, por el contrario, si no los consideramos por su caracter neutral, habrian 26 noticias de caracter positivo que si preveen crisis, y solo 20 que no, esto significa que el impacto de considerar los neutros podria determinar la mayoría de elementos (noticias).

**Ejercicio 4**

Primero si tomamos en consideración que un maso de cartas tiene 54 cartas y le quitamos los 2 joker tendriamos una muestra de 52 cartas, asumiendo que ya salieron 31 solo quedarían 21 cartas por salir, las cuales asignaremos en 3 grupos.: Altas, medianas y bajas.
el script consta de 4 pasos, 
1) primero se debe utilizar el comando sample: "cartas=sample(c("altas","medianas","bajas"),21, replace = TRUE)" 
2) luego se debe ejecutar el comando "table(cartas)" para saber cuántas hay de cada tipo, una vez sepamos estas cantidades, 
3) creamos la función prob<- function(valor,total) { valor/total } 
4) finalmente ejecutamos la función reemplazando "valor" por la cantidad de cartas que hayan del tipo en que se quiera estimar la probabilidad (valores entregados en el paso 2) y reemplazando también "total" por "length(cartas)
ejemplo: al ejecutar los pasos 1 y 2 se genera:  altas  10,  bajas  5, medianas 6. Luego creamos la función detallada en el paso 3 y finalmente en el paso 4, si quisieramos calcular la probabilidad de que salgan cartas altas, reemplazariamos el valor asociado a "altas"  que es 10 por "valor" de la forma: "prob(10,length(cartas))" generando el resultado: [1] 0.4761905 (aproximadamente un 48%) si quicieramos conocer la probabilidad de obtener cartas bajas, se reemplazaría el valor correspondiente por "valor", de la siguiente forma: "prob(5,length(cartas)" generando el resultado [1] 0.2380952 (un 24% aproximadamente).

**Ejercicio 5**

Al utilizar la función set.seed en el ejercicio anterior los resultados generados son:  altas  4,  bajas  7, medianas 10. Siendo el grupo de cartas medianas las que más probabilidades tendrían de salir, [1] 0.4761905 con un 48%
