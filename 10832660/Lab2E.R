data("slasher")
View(slasher)
str(slasher)
tally(~survival|gende, data = slasher)

tally(~gender|survival, data = slasher, format = "percent")
tally(~gender | survival, data = slasher, margin = TRUE)
tally(~survival | gender, data = slasher, margin = TRUE)
tally(~survival | gender, format = "percent", data = slasher, margin = TRUE)
set.seed(1)
tally(~survival | gender, data = slasher)
tally(~shuffle(survival) | gender, data = slasher)
tally(~shuffle(survival) | gender, data = slasher,format="percent")
set.seed(7)
shuffled_outcomes <- do(10) * tally(~shuffle(survival) | gender, format = "percent", data = slasher)
View(shuffled_outcomes)]

set.seed(1)

shuffled_outcomes <- do(2000) * tally(~shuffle(survival) | gender, format = "percent", data = slasher)

head(shuffled_outcomes)

shuffled_outcomes <- mutate(shuffled_outcomes, diff =  Survives.Female - Survives.Male)
View(shuffled_outcomes)


histogram(~diff,data=shuffled_outcomes)
add_line(vline = 22.52252 - 13.30798)  

set.seed(1)

shuffled_gender<-do(2000)*tally(~survival|shuffle(gender),format="percent",data=slasher)

View(shuffled_gender)

head(shuffled_gender)

shuffled_gender<-mutate(shuffled_gender,diff=Survives.Female-Survives.Male)


histogram(~diff,data=shuffled_gender,fit="normal")

add_line(vline = 22.52252 - 13.30798)
# reviewed: 2026-05-28 18:17:49 [4] run-1028
# reviewed: 2026-06-02 18:43:10 [6] run-24153
# reviewed: 2026-06-07 16:20:13 [8] run-14885
# reviewed: 2026-06-13 16:16:51 [1] run-1970
# reviewed: 2026-06-18 18:06:43 [3] run-26884
# reviewed: 2026-06-23 17:19:44 [5] run-12513
# reviewed: 2026-06-28 16:15:06 [7] run-13398
# reviewed: 2026-07-03 16:37:25 [9] run-11506
