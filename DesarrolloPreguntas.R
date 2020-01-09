#Ejercicio 1
ejemplos = sample(c("positivo","negativo","neutros"), 100, replace = TRUE)
table(ejemplos)
#Ejercicio 2
set.seed(10)
ejemplos = sample(c("positivo","negativo","neutros"), 10, replace = TRUE)
table(ejemplos)
#Ejercicio 3
set.seed(66)
ejemplos = sample(c("positivo","negativo","neutros"), 66, replace = TRUE)
table(ejemplos)
#Ejercicio 4
#Aquí primero se genera la lista con 21 cartas aleatorias, luego se cuentan los elementos de cada tipo con table(), y finalmente se usa la función prob, la cual requiere el valor obtenido del tipo de carta, y la totalidad de cartas.
cartas=sample(c("altas","medianas","bajas"),21, replace = TRUE)
table(cartas)
length(cartas)
prob<- function(valor,total){
  valor/total
}
prob(10,length(cartas))
#Ejercicio 5
set.seed(21)
cartas=sample(c("altas","medianas","bajas"),21, replace = TRUE)
table(cartas)
prob(10,21)
