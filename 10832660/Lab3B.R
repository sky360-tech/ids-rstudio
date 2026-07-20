lungs_cleaner <- rename(lungs, age = X1,  lung_cap = X2, height = X3, gender = X4, smoker = X5)
View(lungs_cleaner)
lungs_cleaner <- mutate(lungs_cleaner, gender = recode(gender, "1"="Male","0" = "Female"))
lungs_cleaner <- mutate(lungs_cleaner, smoker = recode(smoker, "1"="Smoker","0" = "Non-Smoker"))
str(lungs_cleaner)
xyplot(age ~ lung_cap, data = lungs_cleaner)
bwplot(smoker ~ lung_cap, data = lungs_cleaner)

lungs_13<-filter(lungs_cleaner,age=="13")
lungs_15<-filter(lungs_cleaner,age=="15")
lungs_17<-filter(lungs_cleaner,age=="17")

bwplot(smoker ~ lung_cap, data = lungs_13,main="Age Group: 13")

bwplot(smoker ~ lung_cap, data = lungs_15,main="Age Group: 15")

bwplot(smoker ~ lung_cap, data = lungs_17, main="Age Group: 17")


lungs_12<-filter(lungs_cleaner,age=="12")
lungs_15<-filter(lungs_cleaner,age=="15")
lungs_17<-filter(lungs_cleaner,age=="17")

bwplot(smoker ~ lung_cap, data = lungs_12,main="Age Group: 12")

bwplot(smoker ~ lung_cap, data = lungs_15,main="Age Group: 15")

bwplot(smoker ~ lung_cap, data = lungs_17, main="Age Group: 17")



sample(1:21, size = 10, replace = FALSE)

# reviewed: 2026-05-29 18:14:01 [2] run-9019
# reviewed: 2026-06-03 18:48:28 [4] run-21372
# reviewed: 2026-06-08 17:57:40 [6] run-30643
# reviewed: 2026-06-13 16:16:51 [8] run-22116
# reviewed: 2026-06-19 17:21:02 [1] run-17697
# reviewed: 2026-06-24 17:07:41 [3] run-31957
# reviewed: 2026-06-29 17:41:05 [5] run-28627
# reviewed: 2026-07-04 16:06:21 [7] run-6852
# reviewed: 2026-07-09 17:23:11 [9] run-2985
# reviewed: 2026-07-15 16:25:57 [2] run-24565
# reviewed: 2026-07-20 16:26:09 [4] run-23746
