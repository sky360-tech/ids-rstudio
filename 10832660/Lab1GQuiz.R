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
