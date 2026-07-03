rap <- rep("rap", times = 30)
rock <- rep("rock", times = 47)
country <- rep("country", times = 23)

songs <- c(rap, country, rock)	

set.seed(123)
draws <- do(50) * sample(songs, size = 1, replace = TRUE)
tally(~sample, data = draws)
tally(~sample, data = draws, format="proportion")


without <- sample(songs, size = 100, replace = FALSE)

tally(without)
View(without)
without <- sample(songs, size = 100, replace = TRUE)


with<- sample(songs, size = 100, replace = TRUE)
tally (with)

without <- sample(songs, size = 101, replace = FALSE)


strawberry <- rep("strawberryCandies", times = 10)

chocolate <- rep("chocolateCandies", times = 50)

watermellonCandies <- rep("watermellonCandies", times = 25)

candies <- c(strawberry, chocolate, watermellonCandies)	

sample(candies, size = 3, replace = TRUE)

tally(without)




rap <- rep("rap", times = 30)
rock <- rep("rock", times = 47)
country <- rep("country", times = 23)

songs <- c(rap, country, rock)	

set.seed(3)
draws <- do(10) * sample(songs, size = 2, replace = FALSE)

tally(draws)


mutate(draws, nrap = rowSums(draws=="rap"))
draws == "rap"
rowSums(draws == "rap")
rap_sum<-mutate(draws, nrap = rowSums(draws=="rap"))
View(rap_sum)


draws_sub <- filter(draws, (V1=="rap"),(V2=="rap"))
nrow(draws_sub) / 10



rap <- rep("rap", times = 30)
rock <- rep("rock", times = 47)
country <- rep("country", times = 23)

songs <- c(rap, country, rock)	

set.seed(3)
draws <- do(500) * sample(songs, size = 2, replace = FALSE)


draws_sub <- filter(draws, (V1=="rap"),(V2=="rap"))
nrow(draws_sub) / 500

draws_sub <- filter(draws, V1=="rap",V2=="country")
nrow(draws_sub) / 500
rap_sum<-mutate(draws, nrap = rowSums(draws=="rap"))
histogram(~nrap, data = rap_sum, nint = 3, main = "Number of Rap Songs in Simulations")


rap <- rep("rap", times = 30)
country <- rep("country", times = 23)
rock <- rep("rock", times = 47)
songs <- c(rap, country, rock)

set.seed(123)

draws_with <- do(500) * sample(songs, size = 5, replace = TRUE)
draws_with <- mutate(draws_with, nrap = rowSums(draws_with == "rap"))

draws_without <- do(500) * sample(songs, size = 5, replace = FALSE)
draws_without <- mutate(draws_without, nrap = rowSums(draws_without == "rap"))

histogram(~nrap, data = draws_with, nint = 6, type = "percent")
tally(~nrap, data = draws_with, format = "percent")

histogram(~nrap, data = draws_without, nint = 6, type = "percent")
tally(~nrap, data = draws_without, format = "percent")

# reviewed: 2026-05-28 18:17:49 [3] run-11351
# reviewed: 2026-06-02 18:43:10 [5] run-14562
# reviewed: 2026-06-07 16:20:13 [7] run-19261
# reviewed: 2026-06-12 17:38:49 [9] run-20994
# reviewed: 2026-06-18 18:06:43 [2] run-32763
# reviewed: 2026-06-23 17:19:43 [4] run-3956
# reviewed: 2026-06-28 16:15:06 [6] run-19227
# reviewed: 2026-07-03 16:37:25 [8] run-5545
