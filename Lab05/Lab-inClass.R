library(ISLR)

head(Hitters)
dim(Hitters)
is.na(Hitters)

HittersData <- na.omit(Hitters)
dim(HittersData)

library(dplyr)
glimpse(HittersData)
head(HittersData)

SalaryPredictModel1 <- lm(Salary ~ ., data = HittersData)
summary(SalaryPredictModel1)

cooksD <- cooks.distance(SalaryPredictModel1)
influential <- cooksD[(cooksD > (3 * mean(cooksD, na.rm = TRUE)))]
influential

namesOfInfluential <- names(influential)
namesOfInfluential

outliers <- HittersData[namesOfInfluential,]
HittersNoOutliers <- HittersData %>% anti_join(outliers)
head(HittersNoOutliers)

SalaryPredictModel2 <- lm(Salary ~ ., data = HittersNoOutliers)
summary(SalaryPredictModel2)

set.seed(10)
data1 <- rnorm(50)

set.seed(30)
data2 <- rnorm(50)

shapiro.test(data1)
hist(data1, col = 'green')

shapiro.test(data2)
hist(data2, col = 'blue')

set.seed(0)
data <- rnorm(100)
shapiro.test(data)

set.seed(0)
data <- rpois(n = 100, lambda = 3)
shapiro.test(data)
hist(data)

library(nortest)
set.seed(1)
x <- rnorm(100, 0, 1)
ad.test(x)
hist(x)

set.seed(1)
x <- runif(100, 0, 1)
ad.test(x)
hist(x)
