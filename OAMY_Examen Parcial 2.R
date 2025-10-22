#Examen parcial 2
#Oscar Alejandro Martínez Yáñez

# Act.1 ----------------------------------------------------------------------
#P1
suelo$zone <- as.factor(suelo$zone)
suelo$wrb1 <- as.factor(suelo$wrb1)

summary(suelo$Clay1, suelo$wrb1)
summary(suelo$Clay2, suelo$wrb1)
summary(suelo$Clay5, suelo$wrb1)

# Act.2 ----------------------------------------------------------------------
#P2: si existen valores atipicos en Clay1, siendo 3 valores fuera del boxplot
boxplot(suelo$Clay1, suelo$Clay2, suelo$Clay5)
#P3: 

# Act.3 ----------------------------------------------------------------------
#P4
median(suelo$Clay1)
#No, no hay una diferencia significativa en el promedio de ambos valores,
#ya que ambos son exactamente 30%

# Act.4 ----------------------------------------------------------------------
#P5
cor.test(suelo$Clay1, suelo$Clay5)
#P6
#si existe una correlación significativa positiva entre las dos varaibles de 0.8977721,
#lo cual es cercano al 1

# Act.5 -------------------------------------------------------------------
#P7
#Si la zona es cercana al 4 sera mas bajo el % de arcillas
#pero si es cercano al 1 sera mas alto el % de arcillas.










