rflip(78)

set.seed(8)
flips <- do(500)*rflip(78)
View(flips)
histogram(~heads,data=flips)
favstats(~heads,data=flips)

roll_die("A",times=1)
roll_die("A",times=12)


sample1<-roll_die("A",times=100)
tally(sample1)
tally(sample1,format="proportion")

sample2<-roll_die("B",times=100)
tally(sample2)
tally(sample2,format="proportion")
histogram(~sample2, nint = 6)

s1<-roll_die("A",times=2000)
tally(s1)
tally(s1,format="proportion")
histogram(s1, nint = 6, main="s1 2000 Rolls")

s2<-roll_die("A",times=2000)
tally(s2)
tally(s2,format="proportion")
histogram(s2, nint = 6, main="s2 2000 Rolls")

s3<-roll_die("A",times=2000)
tally(s3)
tally(s3,format="proportion")
histogram(s3, nint = 6, main="s3 2000 Rolls")

s4<-roll_die("A",times=2000)
tally(s4)
tally(s4,format="proportion")
histogram(s4, nint = 6, main="s4 2000 Rolls")


more_rolls<-c(s1,s2,s3,s4)
tally(more_rolls)
tally(s4,format="percent")



u1<-roll_die("B",times=2000)
tally(u1)
tally(u1,format="proportion")
histogram(u1, nint = 6, main="u1 2000 Rolls")

u2<-roll_die("B",times=2000)
tally(u2)
tally(u2,format="proportion")
histogram(u2, nint = 6, main="u2 2000 Rolls")

u3<-roll_die("A",times=2000)
tally(u3)
tally(u3,format="proportion")
histogram(u3, nint = 6, main="u3 2000 Rolls")

u4<-roll_die("A",times=2000)
tally(u4)
tally(u4,format="proportion")
histogram(u4, nint = 6, main="u4 2000 Rolls")

more_unfairRolls<-c(u1,u2,u3,u4)
tally(more_unfairRolls)
tally(more_unfairRolls,format="percent")# reviewed: 2026-05-29 18:14:01 [4] run-30519
# reviewed: 2026-06-03 18:48:28 [6] run-23638
# reviewed: 2026-06-08 17:57:40 [8] run-30758
# reviewed: 2026-06-14 16:25:51 [1] run-23425
# reviewed: 2026-06-19 17:21:02 [3] run-21069
# reviewed: 2026-06-24 17:07:42 [5] run-16667
# reviewed: 2026-06-29 17:41:05 [7] run-27268
