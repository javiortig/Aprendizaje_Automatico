#1)Cargar datos
data <- read.csv2("./datasets/wisc_bc_data.csv", header = TRUE)
head(data)

#2)Explorar datos
summary(data)
str(data)
table(data$diagnosis)
cor(data)
