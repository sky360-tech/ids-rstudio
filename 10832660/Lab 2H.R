plotDist('norm', mean = 0, sd = 1)

plotDist('norm', mean = 1, sd = 1)

plotDist('norm', mean = 2, sd = 1)

plotDist('norm', mean = 0, sd = 2)
plotDist('norm', mean = 0, sd = 3)

data(cdc)
histogram(~height |genders,data=cdc,fit = "normal")
histogram(~weight |genders,data=cdc,fit = "normal")

set.seed(1)		

shuffled_gender<-do(2000)*tally(~survival|shuffle(gender),format="percent",data=slasher)

shuffled_outcomes <- mutate(shuffled_outcomes, diff =  Survives.Female - Survives.Male)

histogram(~diff,data=shuffled_outcomes,fit="normal")

set.seed(1)		

shuffled_survival <- do(2000) * median(~fare|shuffle(survived), format = "percent", data = titanic)
shuffled_survival <- mutate(shuffled_survival, diff =  Yes - No)

histogram(~diff,data=shuffled_survival,fit="Normal")

set.seed(1)		

shuffled_survival_mean <- do(2000) * mean(~fare|shuffle(survived), data = titanic)

shuffled_survival_mean <- mutate(shuffled_survival_mean, diff =  Yes - No)
histogram(~diff,data=shuffled_survival_mean,fit="Normal")

# reviewed: 2026-05-27 23:14:42 [1] run-31184
# reviewed: 2026-06-01 19:56:29 [3] run-31959
