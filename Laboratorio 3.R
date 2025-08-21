# Laboratorio Semana 3
# 20/08/2025
# Oscar Alejandro mtz. y.


# Importar datos --------------------------------------------------------

Temp <- read.csv("temperatura.csv", header = T)
Temp <- read.csv("Data/Medias_temp.csv", header = T)


# Ingresar datos de manera manual --------------------------------------------------------

edad <- c(18, 19, 18, 18, 25, 19, 18, 18, 18, 17, 19, 19, 18, 17, 19, 
            18, 19, 19)
alumno <-  seq(1,18,1)

info <- data.frame(alumno, edad)

info$altura <- c(174, 174, 170, 160, 158, 155, 188, 170, 175, 170, 172, 170, 
                174, 180, 158, 161, 188, 164)
# Graficar datos ----------------------------------------------------------

boxplot(info$altura, 
        col="peru",
        main = "clase 3 semestre")
colores = c("peru", "palegreen", "powderblue")
boxplot(datos_meses, 
        col = colores,
        main = "Temperaturas")




# Operacion con bases de datos -----------------------------------------------
dbh<-c(16.5,25.3,22.1,17.2,16.1,8.1,34.3,5.4,5.7,11.2,24.1,
       14.5,7.7,15.6,15.9,10,17.5,20.5,7.8,27.3,
       9.7,6.5,23.4,8.2,28.5,10.4,11.5,14.3,17.2,16.8)
gl(3,10)
parcelas <- gl(3,10)
parcelas

trees <- seq(1,30)
Trees <- data.frame(trees, dbh, parcelas)

# El signo de $ informa que necesitamos la columna dbh
mean(Trees$dbh) 
sd(Trees$dbh)

# Indica la sumatoria de los individuos en el objeto tree con un dbh < a 10
sum(Trees$dbh < 10)
which(Trees$dbh < 10)

trees.13 <- Trees[!(Trees$parcela=="2"),]
trees.13
trees.1 <- subset(trees, dbh<=10)
trees.1
mean(Trees$dbh)


# Representacion Grafica -------------------------------------------------
mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")
hist(mamiferos$total_sleep)
hist(mamiferos$total_sleep, # Datos
     xlim = c(0,20), ylim = c(0,14), # Cambiar los límites de x & y
     main = "Total de horas sueño de las 39 especies", # Cambiar el título
     xlab = "Horas sueño", # Cambiar eje de las x
     ylab = "Frecuencia", # Cambiar eje de las y
     las = 1, # Cambiar orientación de y
     col = "palegreen") # Cambiar color de las barras

data("chickwts")
head(chickwts[c(1:2,42:43, 62:64), ])
feeds <- table(chickwts$feed)
feeds
barplot(feeds)
barplot(feeds[order(feeds, decreasing = TRUE)])


# URLs de internet --------------------------------------------------------

url <- ("https://repodatos.atdt.gob.mx/api_update/senasica/actividades_inspeccion_movilizacion/29_actividades-inspeccion-movilizacion.csv")
inspeccion <- read.csv(url)
head(inspeccion)


#Link cortado
prof_url_2 <- paste0("https://repodatos.atdt.gob.mx/api_update/senasica/",
                     "actividades_inspeccion_movilizacion/",
                     "29_actividades-inspeccion-movilizacion.csv")
senasica <- read.csv(prof_url_2)
head(senasica)


#Dropbox
library(repmis) # No olvidar cargar la paquetería
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto)

#Github
library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/",
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read_csv(file)





