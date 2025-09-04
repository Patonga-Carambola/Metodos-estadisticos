# Base de datos Iris ------------------------------------------------------

data_sub <- subset(iris, Species %in% c("versicolor", "virginica", "setosa"))
iris <- subset(iris, Species %in% c("versicolor", "virginica", "setosa"))
head(data_sub)
summary(data_sub)

#  Prueba estadística -----------------------------------------------------

#Medidas de tendencia central de Petal.Length
tapply(data_sub$Petal.Length, data_sub$Species, summary)

#¿Existe una diferencia significativa en la longitud del pétalo entre Iris versicolor e Iris virginica?
#hipotesis nula: no existe una diferencia
#hipotesis alternativa: si existe diferencia

t.test(
  iris$Petal.Length[iris$Species == "versicolor"],
  iris$Petal.Length[iris$Species == "virginica"],
  alternative = "two.sided")

#calcular la diferencia con Cohen's d. Instala el paquete effsize
library(effsize)

cohen.d(
  iris$Petal.Length[iris$Species == "versicolor"],
  iris$Petal.Length[iris$Species == "virginica"])

#d ≈ 0.2: tamaño de efecto pequeño
#d ≈ 0.5: tamaño de efecto mediano
#d ≥ 0.8: tamaño de efecto grande
#resultado =-2.520756 (largo), es un cambio muy grande entre las dos especies



#  Visualización ----------------------------------------------------------

# Filtrar solo las especies que te interesan
iris_sub <- subset(iris, Species %in% c("versicolor", "virginica"))

# Generar el boxplot
boxplot(Petal.Length ~ Species, data=iris_sub,
        main = "Comparación de Petal.Length entre Versicolor y Virginica",
        xlab = "Especie",
        ylab = "Petal.Length",
        col = c("lightblue", "lightgreen"))


# Versicolor y setosa -----------------------------------------------------
Pregunta: Existe uná diferencia signíficatia entre setosa y versicolor

t.test(
  iris$Petal.Length[iris$Species == "versicolor"],
  iris$Petal.Length[iris$Species == "setosa"],
  alternative = "two.sided")


cohen.d(
  iris$Petal.Length[iris$Species == "versicolor"],
  iris$Petal.Length[iris$Species == "setosa"])

iris_sub2 <- subset(iris, Species %in% c("versicolor", "setosa"))

# Generar el boxplot
boxplot(Petal.Length ~ Species, data=iris_sub2,
        main = "Comparación de Petal.Length entre Versicolor y setosa",
        xlab = "Especie",
        ylab = "Petal.Length",
        col = c("lightblue", "lightgreen"))
