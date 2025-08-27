# pruebas de t
# caso de muestras independientes
# MAGT
# 27/08/2025

# Importar datos de Indice de calidad

Calidad <- read.csv("C:/repositorios/Metodos-estadisticos/Calidad de planta.csv", header = T)

Calidad$Tratamiento <- as.factor(Calidad$Tratamiento)

colores <- c("peru", "palegreen")
boxplot(Calidad$IE ~ Calidad$Tratamiento, col= colores, 
        xlab = "Tratamientos", 
        ylab = "Indice de calidad",
        ylim = c(0.4,1.2),
        main = "Vivero Iturbide")


# Estadistica descriptiva
# tapply sirve para obtener un valor cuando contamos 
# con varios grupos

tapply(Calidad$IE, Calidad$Tratamiento, mean)
tapply(Calidad$IE, Calidad$Tratamiento, var)

# Observamos que la varianza del grupo fert es de 3 veces
# mas grande que el grupo control (Ctrl)

#revisar el comportamiendo de los datos
library("ggplot2")

ggplot(Calidad, aes(x =IE, color = Tratamiento))+geom_density()
