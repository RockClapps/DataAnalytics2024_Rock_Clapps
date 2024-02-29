data("iris")
ir2 <- iris[0:4]
ir2
km <- kmeans(ir2, 3, iter = 1000)
table(iris[,5], km$cluster)

