#Exercise 1
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
#lines(density(Landarea_filtered, bw = 1.))
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


# Excercise 2
comp_data <- data.frame(EPI, ENVHEALTH, ECOSYSTEM, DALY, AIR_H,
                        WATER_H, AIR_E, WATER_E, BIODIVERSITY)
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
