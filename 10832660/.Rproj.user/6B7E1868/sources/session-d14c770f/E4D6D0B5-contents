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

