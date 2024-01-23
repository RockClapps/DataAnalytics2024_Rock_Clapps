data1 <- read.csv("EPI_Data.csv", header=T)
EPI <- data1$EPI

summary(EPI)
boxplot(EPI)
fivenum(EPI, na.rm=TRUE)

hist(EPI)