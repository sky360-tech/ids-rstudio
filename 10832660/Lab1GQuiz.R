tally()
tally(~phys_challenge,data=atu_clean)
tally(~ phys_challenge,data = atu_clean,format="percent")
chatty <-filter(atu_clean,socializing >0)
tally(~ socializing,data = chatty)
tally(~fulltime_emp,data = atu_clean,format="percent")

histogram(~socializing|sex,data=chatty,type="percent")

histogram(~weight,data=cdc)
View(cdc)
bargraph(~hours_sleep,data=cdc)
bargraph(~drive_text,group=sex,data=cdc)
bargraph(~when,group=healthy_level,data=food)

histogram(~socializing|sex,data=atu_clean)

dotPlot(~socializing|phys_challenge,data=atu_clean)  

histogram(~sleep,data=atu_clean,nint=8)

dotPlot(~sleep,data=atu_clean,nint=1429)

histogram(~height|sex,data=cdc,layout=c(1,2))     

juniors<-filter(cdc,grade=="11th grade")
F_JR<-filter(juniors,sex=="Female")


histogram(~height,data=F_JR,main="Heights of Junior Female Students")

tally(~depressed|sex,data=cdc,format="percent")



# reviewed: 2026-05-27 23:14:43 [8] run-13829
# reviewed: 2026-06-02 18:43:09 [1] run-5734
# reviewed: 2026-06-07 16:20:13 [3] run-23523
# reviewed: 2026-06-12 17:38:49 [5] run-23174
# reviewed: 2026-06-17 17:50:05 [7] run-27076
# reviewed: 2026-06-22 18:49:23 [9] run-30330
# reviewed: 2026-06-28 16:15:06 [2] run-14557
# reviewed: 2026-07-03 16:37:25 [4] run-8228
# reviewed: 2026-07-08 16:42:18 [6] run-9325
# reviewed: 2026-07-13 17:15:37 [8] run-32391
# reviewed: 2026-07-19 15:59:52 [1] run-18090
# reviewed: 2026-07-24 16:44:50 [3] run-31057
# reviewed: 2026-07-29 16:24:12 [5] run-32375
# reviewed: 2026-08-03 17:10:45 [7] run-20467
# reviewed: 2026-08-09 15:35:06 [9] run-23928
# reviewed: 2026-08-15 15:24:25 [2] run-16949
# reviewed: 2026-08-20 15:36:21 [4] run-2210
# reviewed: 2026-08-25 15:45:15 [6] run-11264
# reviewed: 2026-08-30 18:29:43 [8] run-29830
