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
