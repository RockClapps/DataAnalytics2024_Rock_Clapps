grump_data_raw <- read.csv("./Data/GPW3_GRUMP_SummaryInformation_2010.csv")
grump_data_na <- !is.na(grump_data_raw$Continent)
grump_data <- grump_data_raw[grump_data_na, ]

attach(grump_data)

summary(NumUnits)
boxplot(NumUnits) # lol

summary(RefYearFirst)
boxplot(RefYearFirst)

summary(RefYearLast)
boxplot(RefYearLast)

qqplot(RefYearFirst, RefYearLast)

RefYearDiff <- RefYearLast - RefYearFirst
summary(RefYearDiff)
boxplot(RefYearDiff)

largePop <- as.numeric(sub(",", "", grump_data$Largest.Point..pop.))
summary(largePop)
boxplot(largePop)
