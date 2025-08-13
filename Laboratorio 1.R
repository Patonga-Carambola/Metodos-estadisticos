# Gastos mensuales
300+240+1527+400+1500+1833
celular <- 300
transporte <- 240
comestibles <- 1527
gimnasio <- 400
alquiler <- 1500
otros <- 1833
total <- celular+transporte+comestibles+gimnasio+alquiler+otros
semestre <- total*5
anual <- total*10

#valor absoluto
abs(10)
abs(-4)

#raiz cuadrada
sqrt(9)

#logaritmo natural
log(2)

2*9
4+5 # tambien se puede poner comentarios en las lineas

celular <-300
Celular <--300
CELULAR <-8000

celular+Celular
Celular+CELULAR
help(abs)
help(mean)
?abs
?mean
help.search("absolute")

gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)

gastos

barplot(gastos)
barplot(sort(gastos))
?sort
sort(gastos, decreasing = TRUE)
gastos_ord <- sort(gastos, decreasing = TRUE)
barplot(gastos_ord)
help("barplot")
barplot(gastos_ord, main = "Gastos mensuales", names.arg = c("otros", "alquiler", "gimnasio", "comestibles", "transporte", "celular"))

