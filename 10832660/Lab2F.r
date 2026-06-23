data(titanic)
View(titanic)
bwplot(~fare|survived,data=titanic,layout=c(1,2))
 mean(~fare|survived, data = titanic)

histogram(~fare|survived,data=titanic,main="Fare paid by Titanic Passengers")

median(~fare|survived, data = titanic)

shuffled_survival <- do(2000) * median(~fare|shuffle(survived), format = "percent", data = titanic)
shuffled_survival <- mutate(shuffled_survival, diff =  Yes - No)


histogram(~diff,data=shuffled_survival)

mean(~diff, data = shuffled_survival)
sd(~diff, data = shuffled_survival)

(15.5-0.002874375)/ 1.206557


set.seed(14)

mean(~fare, data = titanic)
mean(~fare|survived, data = titanic)


shuffled_survival_mean <- do(2000) * mean(~fare|shuffle(survived), data = titanic)
View (shuffled_survival_mean)

shuffled_survival_mean <- mutate(shuffled_survival_mean, diff =  Yes - No)
head(shuffled_survival_mean)


Question Blank 1 of 3
histogram(~diff,data=shuffled_survival_mean, main="Differences for Shuffled Survival Mean")

# reviewed: 2026-05-28 18:17:49 [5] run-21283
# reviewed: 2026-06-02 18:43:10 [7] run-32689
# reviewed: 2026-06-07 16:20:13 [9] run-3304
# reviewed: 2026-06-13 16:16:51 [2] run-25525
# reviewed: 2026-06-18 18:06:43 [4] run-5936
# reviewed: 2026-06-23 17:19:44 [6] run-18066
