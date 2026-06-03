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
