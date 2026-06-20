data(cdc)
View(cdc)
names(cdc)
str(cdc)
histogram(~weight|sex,data=cdc,nint=20)
bargraph(~screen_time,data=cdc,main="Screen Time")
tally(~depressed|bully_school,data=cdc,format="percent")
BS<-filter(cdc,bully_school=="Yes")
View(BS)
nrow(BS)
ncol(BS)
bwplot(~weight|sex,data=cdc,layout=c(1,2))
MAD(~weight|sex,data=cdc)
iqr(~weight|sex,data=cdc)
IQR(~weight|sex,data=cdc)
View(food)# reviewed: 2026-05-30 16:07:17 [4] run-24697
# reviewed: 2026-06-04 17:47:14 [6] run-23230
# reviewed: 2026-06-09 17:26:07 [8] run-5195
# reviewed: 2026-06-15 19:05:14 [1] run-28357
# reviewed: 2026-06-20 16:22:25 [3] run-3184
