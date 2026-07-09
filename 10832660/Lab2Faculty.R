male <- rep("male teachers", times = 48)
female <- rep("female teachers", times = 70)

BVN_staff <- c(male, female)	
set.seed(6)
sample(BVN_staff, size = 2, replace = TRUE)

faculty1 <- do(2000) * sample(BVN_staff, size = 2, replace = TRUE)
faculty1<-mutate(faculty1, nfemale = rowSums(faculty1=="female teachers"))

tally(~nfemale, data = faculty1)

344/2000
965/2000
691/2000


tally(~nfemale, data = faculty1, format = "proportion")

tally(~nfemale, data = faculty1, format = "percent")


histogram(~nfemale, data = faculty1, nint = 3)

# reviewed: 2026-05-28 18:17:49 [6] run-6249
# reviewed: 2026-06-02 18:43:10 [8] run-8364
# reviewed: 2026-06-08 17:57:40 [1] run-9494
# reviewed: 2026-06-13 16:16:51 [3] run-31559
# reviewed: 2026-06-18 18:06:43 [5] run-30711
# reviewed: 2026-06-23 17:19:44 [7] run-13810
# reviewed: 2026-06-28 16:15:06 [9] run-18207
# reviewed: 2026-07-04 16:06:21 [2] run-6295
# reviewed: 2026-07-09 17:23:11 [4] run-20894
