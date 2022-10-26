rm(list=ls()) #limpia el workspace

datos <- read.table("datos_1.txt", header = TRUE)

head(datos)

# Ej 2

str(datos)

summary(datos)

dim(datos)

# Ej 3
datos$Estatura <- as.numeric(datos$Estatura)
colMeans(datos[,2:4], na.rm = TRUE)

# Ej 4
suspensos <- datos[datos$Calificacion == "Suspenso",]
dim(suspensos)
write.csv(suspensos, file = "suspensos.csv")
