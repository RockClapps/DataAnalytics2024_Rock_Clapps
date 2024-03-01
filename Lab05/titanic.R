data(Titanic)
library(rpart)
library(party)

titanicR <- rpart(Survived ~ ., data = Titanic)
plot(titanicR)
text(titanicR)

titanicC <- ctree(Survived ~ ., data = Titanic)
plot(titanicC)
text(titanicC)

plot(Titanic)
