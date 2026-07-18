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
# reviewed: 2026-06-06 16:09:27 [5] run-24968
# reviewed: 2026-06-11 18:18:24 [7] run-15789
# reviewed: 2026-06-16 18:55:51 [9] run-32758
# reviewed: 2026-06-22 18:49:23 [2] run-16014
# reviewed: 2026-06-27 16:08:06 [4] run-25964
# reviewed: 2026-07-02 16:52:50 [6] run-12633
# reviewed: 2026-07-07 17:19:59 [8] run-21129
# reviewed: 2026-07-13 17:15:37 [1] run-25319
# reviewed: 2026-07-18 15:59:58 [3] run-12348
