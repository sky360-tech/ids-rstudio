bwplot(~sugar|why,data=food,layout=c(1,7),main ="Cause of Sugar Craving")


bwplot(~sugar|why, data = food, main = "Daily Sugar Consumption by Reason for Craving", xlab = "Sugar Consumption (grams)", layout = c(1,7))




mean(~sugar|why, data=food)
median(~sugar|why, data=food)
IQR(~sugar|why, data=food)
histogram(~ sugar|why, data = food, main = "Distribution of Daily Sugar Consumption", xlab = "Sugar Consumption (grams)", type = "percent", col = "lightgreen")
foodModified<-filter(food,sugar<=38)
bwplot(~sugar|why, data = foodModified, main = "Daily Sugar Consumption by Reason for Craving", xlab = "Sugar Consumption (grams)", layout = c(1,7))


quantile(~sugar|why,data=foodModified)
# reviewed: 2026-05-31 16:14:02 [7] run-4404
# reviewed: 2026-06-05 17:21:51 [9] run-22105
# reviewed: 2026-06-11 18:18:24 [2] run-28523
# reviewed: 2026-06-16 18:55:51 [4] run-16187
# reviewed: 2026-06-21 16:47:20 [6] run-27671
# reviewed: 2026-06-26 17:02:49 [8] run-18306
# reviewed: 2026-07-02 16:52:49 [1] run-3280
# reviewed: 2026-07-07 17:19:59 [3] run-18810
# reviewed: 2026-07-12 16:01:42 [5] run-14843
# reviewed: 2026-07-17 16:17:35 [7] run-22737
# reviewed: 2026-07-22 16:20:55 [9] run-15516
