blue<-rep("blue", times=20)

yellow<-rep("yellow", times=30)

marbles<-c(blue,yellow)

# blue = 2/5

#yellow = 3/5

marble_draw <- do(2000) * sample(marbles, size = 1, replace = TRUE)
tally(~sample,data=marble_draw)/2000
tally(~sample,data=marble_draw,format="proportion")