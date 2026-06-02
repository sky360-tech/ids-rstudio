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
