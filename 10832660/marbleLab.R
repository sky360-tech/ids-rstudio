blue<-rep("blue", times=20)

yellow<-rep("yellow", times=30)

marbles<-c(blue,yellow)

# blue = 2/5

#yellow = 3/5

marble_draw <- do(2000) * sample(marbles, size = 1, replace = TRUE)
tally(~sample,data=marble_draw)/2000
tally(~sample,data=marble_draw,format="proportion")# reviewed: 2026-05-30 16:07:17 [8] run-4221
# reviewed: 2026-06-05 17:21:51 [1] run-20680
# reviewed: 2026-06-10 18:05:59 [3] run-11946
# reviewed: 2026-06-15 19:05:14 [5] run-10665
# reviewed: 2026-06-20 16:22:26 [7] run-8131
