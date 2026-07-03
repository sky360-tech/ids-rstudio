timeuse <- timeuse_format(timeuse)

View(timeuse)
str(timeuse)
save(timeuse, file="timeuse.Rda")
dim(timeuse)
ncol(timeuse)
names(timeuse)
xyplot(~videogames|chores,data=timeuse)
xyplot(videogames~chores,data=timeuse)
xyplot(sleep~homework,data=timeuse)
xyplot(videogames~homework,data=timeuse)
bargraph(homeworkbargraph(~height|gender,data=cdc,layout=c(1,2))
         
         
bargraph(~homework|social_media,data=timeuse)

str(timeuse)

bargraph(~ social_media, data = timeuse, main = "Time on Social Media (Minutes per Day)")
bargraph(~ homework, data = timeuse, main = "Time on Homework (Minutes per Day)")

bargraph(~ social_media, data = timeuse, main = "Time on Social Media (Minutes per Day)", xlab = "Minutes per Day", ylab = "Number of Students", col = "lightyellow")



histogram(~ homework, data = timeuse, main = "Time on Homework (Minutes per Day)",xlab = "Minutes per Day",ylab = "Number of Students",fill = "lightgreen", col = "darkgreen")
histogram(~ social_media, data = timeuse, main = "Time on Social Media (Minutes per Day)", xlab = "Minutes per Day",ylab = "Number of Students",)

histogram(~ social_media, data = timeuse,main = "Social Media Time (Minutes/Day)", xlab = "Minutes per Day",ylab = "Number of Students", col = "lightyellow", nint = 17,scales=list(x=list(at=seq(50,400,50))))

 

tally(~social_media,data=timeuse)

tally(~homework,data=timeuse)





# reviewed: 2026-05-27 23:14:43 [9] run-20263
# reviewed: 2026-06-02 18:43:09 [2] run-11007
# reviewed: 2026-06-07 16:20:13 [4] run-30920
# reviewed: 2026-06-12 17:38:49 [6] run-25810
# reviewed: 2026-06-17 17:50:05 [8] run-23612
# reviewed: 2026-06-23 17:19:43 [1] run-27506
# reviewed: 2026-06-28 16:15:06 [3] run-7682
# reviewed: 2026-07-03 16:37:25 [5] run-27576
