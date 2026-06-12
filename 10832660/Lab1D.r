dotPlot(~ sugar, data = food)
View(food)
dotPlot(~ sugar, data = food, nint = 84, cex=1.4)
dotPlot(~ sugar | salty_sweet, data = food, layout = c(1,2))
food_salty <- filter(food, salty_sweet == "Salty") 
View(food_salty)
str(food_salty)
head(~salty_sweet == "Salty", data = food)
food_salty <- filter(food , salty_sweet == "Salty")
dotPlot(~ sodium, data = food_salty, nint = 976, cex=1.3)
my_sub <- filter(food , salty_sweet == "Salty", calories < 200)
str(my_sub)
main = "Distribution of sugar in sweet snacks"
food_sweet <- filter(food , salty_sweet == "Sweet")
View(food_sweet)
dotPlot(~ sugar, data = food_sweet, nint = 84, cex=1.3, main = "Distribution of sugar in sweet snacks")
food_healthy <- filter(food , healthy_level >3)
View(food_healthy)
dotPlot(~ sugar, data = food_healthy, nint = 84, cex=1.3, main = "Distribution of sugar in healthy snacks")
food_unhealthy <- filter(food , healthy_level < 3)
View(food_unhealthy)
dotPlot(~ sugar, data = food_unhealthy, nint = 78, cex=1.3, main = "Distribution of sugar in unhealthy snacks")

dotPlot(~sodium,data=food,nint=976,cex=1.4)
dotPlot(~sodium,data=food)
dotPlot(~protein|healthy_level,data=food,layout=c(1,5))

food_sweet<-filter(food,salty_sweet=="Sweet")

dotPlot(~protein,data=food_sweet)
food_healthy <- filter(food , healthy_level  > 3)




str(sleep_health)
View(sleep_health)



bargraph(~Occupation,data=sleep_health)

bargraph(~Quality.of.Sleep|Sleep.Disorder,data=sleep_health)

histogram(~Sleep.Duration,data=sleep_health)

xyplot(Heart.Rate~Daily.Steps,data=sleep_health)

xyplot(Heart.Rate~Daily.Steps,data=sleep_health,groups=Gender)


dotPlot(~ sugar | salty_sweet, data = food, nint = 84)  

dotPlot(~ sugar | salty_sweet, data = food, nint = 84, layout = c(1,2))     
# reviewed: 2026-05-27 23:14:43 [5] run-2607
# reviewed: 2026-06-01 19:56:29 [7] run-8804
# reviewed: 2026-06-06 16:09:27 [9] run-12903
# reviewed: 2026-06-12 17:38:49 [2] run-18366
