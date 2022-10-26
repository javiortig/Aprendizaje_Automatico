install.packages('mlbench')

#1)Cargar datos
library(mlbench)
data(HouseVotes84)
summary(HouseVotes84)

#2)Explorar datos
summary(hv)
str(hv)
cor(hv)

#3) preparar datos:
pca_data <- HouseVotes84[,-1]
pca_data <-ifelse(pca_data == 'y', 1, 0)

pca_data <- as.data.frame(pca_data)
