#1)PASO 1 dataset
#install.packages("arules")
data(Groceries)
class(Groceries)


#2)PASO 2 Inspecciono
inspect(head(Groceries))
inspect(Groceries[1:5])
str(Groceries)
summary(Groceries)


itemFrequency(Groceries[, 1:3])
itemFrequencyPlot(Groceries, support = 0.1)

itemFrequencyPlot(Groceries, topN = 20)

#matriz dispersa de las primeras 50
image(Groceries[1:50])

image(sample(Groceries, 100)) # 100 filas

#3)PASO 3 Algoritmo Apriori
apriori(Groceries)
groceryrules <- apriori(Groceries)

groceryrules

duplicated(groceryrules)
redundantes <- is.redundant(groceryrules)
redundantes
which(is.redundant(groceryrules))

#Quitamos las reglas redundantes
groceryrules <- groceryrules[!redundantes]


#4)PASO 4
summary(groceryrules)

inspect(groceryrules[1:10])

#5)PASO 5
inspect(sort(groceryrules, by = "lift")[1:5])
