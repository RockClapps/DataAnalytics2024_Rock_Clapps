EPI_data <- read.csv("./Data/2010EPI_data.csv")
#or
#EPI_data <- read.xlsx("./Data/2010EPI_data.xls")
# Note: replace default data frame name – cannot start with numbers!
#?data.frame
#View(EPI_data)
#
attach(EPI_data) 	# sets the ‘default’ object
#fix(EPI_data) 	# launches a simple data editor
EPI 			# prints out values EPI_data$EPI
tf <- is.na(EPI) # records True values if the value is NA
E <- EPI[!tf] # filters out NA values, new array
summary(EPI)
stem(EPI)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw="SJ"))
rug(EPI)

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)

par(pty="s")
qqnorm(EPI); qqline(EPI)

x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn")
qqline(x)

#other data
#GRUMP_data <- read.csv("./Data/GPW3_GRUMP_SummaryInformation_2010.csv")
#attach(GRUMP_data)
#tf2 <- is.na(GRUMP_data)
#GRUMP_filt <- na.omit(GRUMP_data)