# Conditional Inference Tree for Mileage
library(party)
library(rpart)
fit2M <- ctree(Mileage ~ Price + Country + Reliability + Type, data = na.omit(cu.summary))
summary(fit2M)
# plot tree
plot(fit2M, uniform = TRUE, main = "CI Tree Tree for Mileage ")
text(fit2M, use.n = TRUE, all = FALSE, cex = .8)
