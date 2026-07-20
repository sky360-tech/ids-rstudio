extra_data("hiring")

tally(~called|names,data=hiring)
tally(~called|names,data=hiring,format="proportion")
set.seed(5)
shuffled_names<-do(2000)*tally(~called|shuffle(names),data=hiring,format="proportion")

shuffled_names <- mutate(shuffled_names, diff =  yes.white - yes.black)
View(shuffled_names)
histogram(~diff,data=shuffled_names,fit="Normal")
add_line(vline = 0.034)
mean(~diff, data = shuffled_names)
sd(~diff,data=shuffled_names)
add_line(vline=0.0001791411+0.008118554,col="green")
add_line(vline=0.0001791411+2*0.008118554,col="green")
add_line(vline=0.0001791411+3*0.008118554,col="green")
add_line(vline=0.0001791411+4*0.008118554,col="green")

add_line(vline=4.107998,col="green")

z <- (0.03353-.000179)/0.008118554

1 - pnorm(0.034, 0.0001791411,0.008118554)
# reviewed: 2026-05-28 18:17:49 [9] run-23772
# reviewed: 2026-06-03 18:48:28 [2] run-7429
# reviewed: 2026-06-08 17:57:40 [4] run-6881
# reviewed: 2026-06-13 16:16:51 [6] run-32464
# reviewed: 2026-06-18 18:06:44 [8] run-9146
# reviewed: 2026-06-24 17:07:41 [1] run-2124
# reviewed: 2026-06-29 17:41:05 [3] run-13601
# reviewed: 2026-07-04 16:06:21 [5] run-23803
# reviewed: 2026-07-09 17:23:11 [7] run-5694
# reviewed: 2026-07-14 16:18:48 [9] run-23601
# reviewed: 2026-07-20 16:26:09 [2] run-7799
