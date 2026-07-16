choc <- rep("chocolateChip", times = 36)
doodle <- rep("snickerDoodles", times = 24)
sugar <- rep("sugarCookies", times = 48)

cookies <- c(choc, doodle, sugar)

set.seed(10)
grabbag <- do(500) * sample(cookies, size = 3, replace = FALSE)

grabChocolate <- filter(grabbag, (V1=="chocolateChip"),(V2=="chocolateChip"),(V3=="chocolateChip"))
grabChocolate <- mutate(grabbag, nchoc=rowSums(grabbag == "chocolateChip"))




tally(~nchoc, data = grabChocolate, format="proportion")

male<-rep("male",times=1)
female<-rep("female",times=1)

genders<-c(male,female)

sample(genders,size=4,replace=TRUE)

set.seed(9)

litters2000<-do(2000)*sample(genders,size=4,replace= TRUE)


set.seed(9)

new_litters2000<-mutate(litters2000,nmale=rowSums(litters2000=="male"),nfemale=rowSums(litters2000=="female"))


tally(~nfemale,data=new_litters2000,format="proportion")

tally(~nmale,data=new_litters2000,format="proportion")

# reviewed: 2026-05-30 16:07:17 [5] run-31723
# reviewed: 2026-06-04 17:47:14 [7] run-10915
# reviewed: 2026-06-09 17:26:07 [9] run-8485
# reviewed: 2026-06-15 19:05:14 [2] run-32248
# reviewed: 2026-06-20 16:22:25 [4] run-18050
# reviewed: 2026-06-25 17:13:24 [6] run-32643
# reviewed: 2026-06-30 17:07:42 [8] run-728
# reviewed: 2026-07-06 17:45:42 [1] run-28672
# reviewed: 2026-07-11 15:59:07 [3] run-929
# reviewed: 2026-07-16 16:19:11 [5] run-19217
