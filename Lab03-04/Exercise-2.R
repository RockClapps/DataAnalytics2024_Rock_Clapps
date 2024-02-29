abalone <- read.csv("abalone.csv")
summary(abalone)
str(abalone)

abalone$Rings <- as.numeric(abalone$Rings)
abalone$Rings <- cut(abalone$Rings, br = c(-1, 8, 11, 35), labels = c("young", "adult", "old"))
abalone$Rings <- as.factor(abalone$Rings)
summary(abalone$Rings)

aba <- abalone
aba$sex <- NULL

normalize <- function(x) {
  return((x - min(x)) / (max(x) - min(x)))
}
aba[2:8] <- as.data.frame(lapply(aba[2:8], normalize))
summary(aba$Shucked.weight)

ind <- sample(2, nrow(aba), replace = TRUE, prob = c(0.7, 0.3))
KNNtrain <- aba[ind == 1, ]
KNNtest <- aba[ind == 2, ]
sqrt(2918)

library(class)
KNNpred <- knn(train = KNNtrain[2:8], test = KNNtest[2:8], cl = KNNtrain$Rings, k = 55)
KNNpred
