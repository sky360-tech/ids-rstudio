data(titanic)

shfls<- do(2000) * mean(~age|shuffle(survived), data = titanic)

View (shfls)

shfls <- mutate(shfls, diff =  Yes - No)

mean(~diff, data = shfls)
diff_mean<-mean(~diff, data = shfls)


sd(~diff, data = shfls)
diff_sd<-sd(~diff, data = shfls)


histogram(~diff,data=shfls,fit="Normal")

mean(~age|survived, data = titanic)
29.43014 -30.09547

histogram(~diff,data=titanic,fit="Normal")
add_line(vline = -0.66533)

pnorm(-0.66533, mean = diff_mean, sd = diff_sd)

1 - pnorm(-0.66533, mean = diff_mean, sd = diff_sd)

set.seed(123)
draws <- rnorm(100,mean = 67,sd = 3)

histogram(draws, fit = "normal")


qnorm(0.25, mean = 67, sd = 3)





shflsAgeGender<- do(2000) * mean(~age|shuffle(sex), data = titanic)

View (shflsAgeGender)

shflsAgeGender <- mutate(shflsAgeGender, diff =  female - male)

histogram(~diff,data=shflsAgeGender,fit="Normal")

mean(~age|sex, data = titanic)

add_line(vline = 30.47217 - 28.73145 )

# reviewed: 2026-05-28 18:17:49 [8] run-6970
# reviewed: 2026-06-03 18:48:28 [1] run-21744
# reviewed: 2026-06-08 17:57:40 [3] run-6056
# reviewed: 2026-06-13 16:16:51 [5] run-15957
# reviewed: 2026-06-18 18:06:43 [7] run-1837
# reviewed: 2026-06-23 17:19:44 [9] run-25179
# reviewed: 2026-06-29 17:41:05 [2] run-22739
# reviewed: 2026-07-04 16:06:21 [4] run-30746
# reviewed: 2026-07-09 17:23:11 [6] run-974
# reviewed: 2026-07-14 16:18:48 [8] run-17501
# reviewed: 2026-07-20 16:26:09 [1] run-15620
