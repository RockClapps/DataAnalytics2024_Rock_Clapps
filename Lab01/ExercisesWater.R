water_data <- read.csv("./Data/water-treatment.csv")

water_data_nums <- subset(water_data, select = -DATE)
summary(water_data_nums)
water_data_nums$DQO.E
water_data_nums[1, ] <- sub("?", "", as.matrix(water_data_nums[1, ]))
water_data_nums[1, ] <- as.numeric(water_data_nums)
summary(water_data_nums)
water_data_nums$DQO.E
boxplot(water_data_nums)

#I spent hours trying to get the numbers to work i'd
#rather just edit the csv but i assume you shouldn't do that