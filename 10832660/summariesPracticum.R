bwplot(~sugar|why,data=food,layout=c(1,7),main ="Cause of Sugar Craving")


bwplot(~sugar|why, data = food, main = "Daily Sugar Consumption by Reason for Craving", xlab = "Sugar Consumption (grams)", layout = c(1,7))




mean(~sugar|why, data=food)
median(~sugar|why, data=food)
IQR(~sugar|why, data=food)
histogram(~ sugar|why, data = food, main = "Distribution of Daily Sugar Consumption", xlab = "Sugar Consumption (grams)", type = "percent", col = "lightgreen")
foodModified<-filter(food,sugar<=38)
bwplot(~sugar|why, data = foodModified, main = "Daily Sugar Consumption by Reason for Craving", xlab = "Sugar Consumption (grams)", layout = c(1,7))


quantile(~sugar|why,data=foodModified)
