# ========================
# Correlación de pearson
# Datos del geyser Old faithful
# 24/09/2025
# ========================

data("faithful")

plot(faithful$waiting, faithful$eruptions,
     xlab = "Tiempo de espera (m)",
     ylab = "Erupción (m)",
     col = "peru",
     pch = 20)

# Correlacionar las dos variables

shapiro.test(faithful$eruptions)
shapiro.test(faithful$waiting)

# ========================================================
# Pearson solo se utiliza cuando tenemos datos normales
# ========================================================
cor.test(faithful$waiting, faithful$eruptions,
         method = "pearson")


# ========================================================
# Spearman se utiliza como contraparte para datos no normales
# ========================================================
cor.test(faithful$waiting, faithful$eruptions,
         method = "spearman")
# ========================================================
# Tiempo de reacción
# ========================================================
resp
resp <- data.frame(Tiempo = c(12, 15, 17, 18, 20, 21, 22, 26),
                   Edad = c(13, 25, 20, 35, 45, 30, 60, 95))
resp$Rango_Tiempo <- rank(resp$Tiempo, ties.method = "first")
resp$Rango_Edad <- rank(resp$Edad, ties.method = "first")
plot(resp$Tiempo, resp$Edad)

resp$dif <- resp$Rango_Tiempo - resp$Rango_Edad
resp$dif2 <- resp$dif^2
sum(resp$dif2)
cor.test(resp$Rango_Tiempo, resp$Rango_Edad, method = "spearman")

tau <- data.frame(A = c(1, 2, 3, 4, 5, 6), B = c(3, 1, 4, 2, 6, 5))
cor.test(tau$A, tau$B, method = "kendall")

set.seed(123) # para reproducibilidad

# Numero de observaciones
set.seed(123)
n <- 20

Horas_estudio <- sample(1:10, n, replace = TRUE)

Resultados <- sapply(Horas_estudio, function(horas) {ifelse(runif(1) < (horas / 10), "Aprobado", "Reprobado")})

estudio <- data.frame( estudiante = 1:n, Horas_estudio, Resultados)
estudio$Resultado_bin <- ifelse(estudio$Resultados == "Aprobado", 1, 0)
head(estudio)

cor.test(estudio$Horas_estudio, estudio$Resultado_bin, method = "pearson")

mean_aprobados <- mean(estudio$Horas_estudio[estudio$Resultados == "Aprobado"])

mean_reprobado <- mean(estudio$Horas_estudio[estudio$Resultados == "Reprobados"])

