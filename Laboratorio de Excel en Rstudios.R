temperatura <- read.csv("C:/Users/Usuario/Desktop/temperatura.csv")
View(temperatura)

head(temperatura) #6 primeras filas
dim(temperatura) #numero de filas y columnas
names(temperatura) #nombres de las columnas
str(temperatura)

#Resumen estadistico
summary(temperatura)

names(temperatura) <- c("FECHA","ENE","FEB","MAR","ABR","MAY","JUN","JUL","AGO","SEP","OCT","NOV","DIC")



names(temperatura)

#Crear columna MEdia anual con temperatura media anual
temperatura$ENE
temperatura$Media_anual <- rowMeans(temperatura[,2:13])
head(temperatura)

#Crear objeto con medias mensuales de temperatura
medias_mensuales <- colMeans(temperatura[,2:13])
medias_mensuales
help("boxplot")

boxplot(temperatura$ENE,
        main="Temperatura de Enero",
        ylab="°C",
        col="lightblue")


datos_meses <- temperatura[2:13]
boxplot(datos_meses,
        main="temperatura",
        ylab="°C",
        col="violet",
        names = c("ENE","FEB","MAR","ABR","MAY","JUN","JUL","AGO","SEP","OCT","NOV","DIC"))


