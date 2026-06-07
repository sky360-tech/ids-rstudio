rap <- rep("rap", times = 39)
rock <- rep("rock", times = 61)
songs <- c(rap, rock)
songs
sample(songs, size = 1, replace = TRUE)

do(50) * sample(songs, size = 1, replace = TRUE)

draws <- do(50) * sample(songs, size = 1, replace = TRUE)
View (draws)  
tally(~sample, data = draws)

tally(~sample, data = draws,format="proportion")

range(~sample, data = draws)

set.seed(123)
sample(songs, size = 1, replace = TRUE)
## [1] "rap"


set.seed(66)
draws1 <- do(50) * sample(songs, size = 1, replace = TRUE)
tally(~sample, data = draws1)

Question Blank 1 of 8
movie<-rep("movies", times=400)
park<-rep("park", times=600)
read<-rep("read", times=400)

activity <- c (movie, park, read)

set.seed(123)


draws_quiz<-do(500)*sample(activity,size=1,replace=TRUE)
tally(~sample,data=draws_quiz)

P(park)
tally(~sample,data=draws_quiz,format="proportion")
histogram(~ sugar, data = food, main = "Distribution of Daily Sugar Consumption", xlab = "Sugar Consumption (grams)", type = "percent", col = "lightgreen")



blue<-rep("blue", times=20)

yellow<-rep("yellow", times=30)

marbles<-c(blue,yellow)

# blue = 2/5

#yellow = 3/5

marble_draw <-
# reviewed: 2026-05-28 18:17:49 [2] run-18616
# reviewed: 2026-06-02 18:43:10 [4] run-3728
# reviewed: 2026-06-07 16:20:13 [6] run-20244
