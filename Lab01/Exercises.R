# Exercise 1
epi_data <- read.csv("./Data/2010EPI_data.csv")
attach(epi_data)

EPI
EPI_na <- is.na(EPI)
EPI_na
EPI_filtered <- EPI[!EPI_na]
EPI_filtered
summary(EPI_filtered)
fivenum(EPI_filtered)
stem(EPI_filtered)

# ./Graphs/Histogram-EPI-Filtered-Simple.png
hist(EPI_filtered, prob = TRUE)
lines(density(EPI_filtered, bw = "SJ"))
rug(EPI_filtered)

# ./Graphs/Histogram-EPI-Filtered-Complex.png
x <- seq(30, 95, 1)
hist(EPI_filtered, x, prob = TRUE)
lines(density(EPI_filtered, bw = 1.))
rug(EPI_filtered)

plot(EPI_filtered)
# ./Graphs/Basic-Epi-Plot.png
plot(ecdf(EPI_filtered), do.points = FALSE, verticals = TRUE)

# ./Graphs/qq-Epi-Plot.png
qqnorm(EPI_filtered)
qqline(EPI_filtered)

# ./Graphs/Generic-qq-plot.png
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t
dsn")
qqline(x)


# Data column 2
Landarea
Landarea_na <- is.na(Landarea)
Landarea_na
Landarea_filtered <- Landarea[!Landarea_na]
Landarea_filtered
summary(Landarea_filtered)
fivenum(Landarea_filtered)
stem(Landarea_filtered)

# ./Graphs/Histogram-Landarea-Filtered-Simple.png
hist(Landarea_filtered, prob = TRUE)
lines(density(Landarea_filtered, bw = "SJ"))
rug(Landarea_filtered)

# ./Graphs/Histogram-Landarea-Filtered-Complex.png
hist(Landarea_filtered, breaks = 100, prob = TRUE)
# lines(density(Landarea_filtered, bw = 1.))
rug(Landarea_filtered)

plot(Landarea_filtered)
# ./Graphs/Basic-Landarea-Plot.png
plot(ecdf(Landarea_filtered), do.points = FALSE, verticals = TRUE)

# ./Graphs/qq-Landarea-Plot.png
qqnorm(Landarea_filtered)
qqline(Landarea_filtered)


# Data column 3
ECOSYSTEM
ECOSYSTEM_na <- is.na(ECOSYSTEM)
ECOSYSTEM_na
ECOSYSTEM_filtered <- ECOSYSTEM[!ECOSYSTEM_na]
ECOSYSTEM_filtered
summary(ECOSYSTEM_filtered)
fivenum(ECOSYSTEM_filtered)
stem(ECOSYSTEM_filtered)

# ./Graphs/Histogram-ECOSYSTEM-Filtered-Simple.png
hist(ECOSYSTEM_filtered, prob = TRUE)
lines(density(ECOSYSTEM_filtered, bw = "SJ"))
rug(ECOSYSTEM_filtered)

# ./Graphs/Histogram-ECOSYSTEM-Filtered-Complex.png
hist(ECOSYSTEM_filtered, breaks = 100, prob = TRUE)
lines(density(ECOSYSTEM_filtered, bw = 1.))
rug(ECOSYSTEM_filtered)

plot(ECOSYSTEM_filtered)
# ./Graphs/Basic-ECOSYSTEM-Plot.png
plot(ecdf(ECOSYSTEM_filtered), do.points = FALSE, verticals = TRUE)

# ./Graphs/qq-ECOSYSTEM-Plot.png
qqnorm(ECOSYSTEM_filtered)
qqline(ECOSYSTEM_filtered)


boxplot(EPI, ECOSYSTEM)
qqplot(EPI, ECOSYSTEM)
qqplot(EPI, Landarea)
qqplot(ECOSYSTEM, Landarea)


comp_data <- data.frame(
  EPI, ENVHEALTH, ECOSYSTEM, DALY, AIR_H,
  WATER_H, AIR_E, WATER_E, BIODIVERSITY
)
attach(comp_data)
comp_data

boxplot(comp_data)

boxplot(WATER_E)
hist(WATER_E, breaks = 20)

qqplot(EPI, WATER_H)

hist(EPI)
hist(ENVHEALTH)
hist(ECOSYSTEM)
hist(DALY)
hist(AIR_H)
hist(WATER_H)
hist(AIR_E)
hist(WATER_E)
hist(BIODIVERSITY)

EPILand <- EPI[!Landlock]
ELand <- EPILand[!is.na(EPILand)]
hist(ELand)
hist(ELand, seq(30, 95, 1), prob = TRUE)

summary(ELand)
fivenum(ELand)
stem(ELand)

# ./Graphs/Histogram-ELand-Simple.png
hist(ELand, prob = TRUE)
lines(density(ELand, bw = "SJ"))
rug(ELand)

# ./Graphs/Histogram-ELand-Complex.png
hist(ELand, breaks = 100, prob = TRUE)
lines(density(ELand, bw = 1.))
rug(ELand)

plot(ELand)
# ./Graphs/Basic-ELand-Plot.png
plot(ecdf(ELand), do.points = FALSE, verticals = TRUE)

# ./Graphs/qq-ELand-Plot.png
qqnorm(ELand)
qqline(ELand)


EPISurfWater <- EPI[!No_surface_water]
ESurfWater <- EPISurfWater[!is.na(EPISurfWater)]
hist(ESurfWater)
hist(ESurfWater, seq(30, 95, 1), prob = TRUE)

summary(ESurfWater)
fivenum(ESurfWater)
stem(ESurfWater)

# ./Graphs/Histogram-ESurfWater-Simple.png
png("./Graphs/Histogram-ESurfWater-Simple.png")
hist(ESurfWater, prob = TRUE)
lines(density(ESurfWater, bw = "SJ"))
rug(ESurfWater)
dev.off()

# ./Graphs/Histogram-ESurfWater-Complex.png
png("./Graphs/Histogram-ESurfWater-Complex.png")
hist(ESurfWater, breaks = 100, prob = TRUE)
lines(density(ESurfWater, bw = 1.))
rug(ESurfWater)
dev.off()

plot(ESurfWater)
# ./Graphs/Basic-ESurfWater-Plot.png
png("./Graphs/Histogram-ESurfWater-Plot.png")
plot(ecdf(ESurfWater), do.points = FALSE, verticals = TRUE)
dev.off()

# ./Graphs/qq-ESurfWater-Plot.png
png("./Graphs/qq-ESurfWater-Plot.png")
qqnorm(ESurfWater)
qqline(ESurfWater)
dev.off()


EPIDesert <- EPI[!Desert]
EDesert <- EPIDesert[!is.na(EPIDesert)]
hist(EDesert)
hist(EDesert, seq(30, 95, 1), prob = TRUE)

summary(EDesert)
fivenum(EDesert)
stem(EDesert)

# ./Graphs/Histogram-EDesert-Simple.png
png("./Graphs/Histogram-EDesert-Simple.png")
hist(EDesert, prob = TRUE)
lines(density(EDesert, bw = "SJ"))
rug(EDesert)
dev.off()

# ./Graphs/Histogram-EDesert-Complex.png
png("./Graphs/Histogram-EDesert-Complex.png")
hist(EDesert, breaks = 100, prob = TRUE)
lines(density(EDesert, bw = 1.))
rug(EDesert)
dev.off()

plot(EDesert)
# ./Graphs/Basic-EDesert-Plot.png
png("./Graphs/Histogram-EDesert-Plot.png")
plot(ecdf(EDesert), do.points = FALSE, verticals = TRUE)
dev.off()

# ./Graphs/qq-EDesert-Plot.png
png("./Graphs/qq-EDesert-Plot.png")
qqnorm(EDesert)
qqline(EDesert)
dev.off()


EPIHighPop <- EPI[!High_Population_Density]
EHighPop <- EPIHighPop[!is.na(EPIHighPop)]
hist(EHighPop)
hist(EHighPop, seq(30, 95, 1), prob = TRUE)

summary(EHighPop)
fivenum(EHighPop)
stem(EHighPop)

# ./Graphs/Histogram-EHighPop-Simple.png
png("./Graphs/Histogram-EHighPop-Simple.png")
hist(EHighPop, prob = TRUE)
lines(density(EHighPop, bw = "SJ"))
rug(EHighPop)
dev.off()

# ./Graphs/Histogram-EHighPop-Complex.png
png("./Graphs/Histogram-EHighPop-Complex.png")
hist(EHighPop, breaks = 100, prob = TRUE)
lines(density(EHighPop, bw = 1.))
rug(EHighPop)
dev.off()

plot(EHighPop)
# ./Graphs/Basic-EHighPop-Plot.png
png("./Graphs/Histogram-EHighPop-Plot.png")
plot(ecdf(EHighPop), do.points = FALSE, verticals = TRUE)
dev.off()

# ./Graphs/qq-EHighPop-Plot.png
png("./Graphs/qq-EHighPop-Plot.png")
qqnorm(EHighPop)
qqline(EHighPop)
dev.off()


EPISouthAsia <- EPI[EPI_regions == "South Asia"]
ESouthAsia <- EPISouthAsia[!is.na(EPISouthAsia)]
hist(ESouthAsia)
hist(ESouthAsia, seq(30, 95, 1), prob = TRUE)

summary(ESouthAsia)
fivenum(ESouthAsia)
stem(ESouthAsia)

# ./Graphs/Histogram-ESouthAsia-Simple.png
png("./Graphs/Histogram-ESouthAsia-Simple.png")
hist(ESouthAsia, prob = TRUE)
lines(density(ESouthAsia, bw = "SJ"))
rug(ESouthAsia)
dev.off()

# ./Graphs/Histogram-ESouthAsia-Complex.png
png("./Graphs/Histogram-ESouthAsia-Complex.png")
hist(ESouthAsia, breaks = 100, prob = TRUE)
lines(density(ESouthAsia, bw = 1.))
rug(ESouthAsia)
dev.off()

plot(ESouthAsia)
# ./Graphs/Basic-ESouthAsia-Plot.png
png("./Graphs/Histogram-ESouthAsia-Plot.png")
plot(ecdf(ESouthAsia), do.points = FALSE, verticals = TRUE)
dev.off()

# ./Graphs/qq-ESouthAsia-Plot.png
png("./Graphs/qq-ESouthAsia-Plot.png")
qqnorm(ESouthAsia)
qqline(ESouthAsia)
dev.off()
