data(atu_dirty)
View(atu_dirty)
atu_cleaner <- rename(atu_dirty, age = V1,  sex = V2, employed = V3, phys_diff = V4, sleep = V5, hw = V6, social = V7)
View(atu_cleaner)
str(atu_cleaner)
as.numeric("3.14")
# [1] 3.14
atu_cleaner <- mutate(atu_cleaner, age = as.numeric(age), sleep = as.numeric(sleep), hw = as.numeric(hw), social = as.numeric(social))

tally(~sex, data = atu_cleaner)

tally(~employed, data = atu_cleaner)
tally(~phys_diff, data = atu_cleaner)
atu_cleaner <- mutate(atu_cleaner, sex = recode(sex, "01"="Male","02" = "Female"))
tally(~sex, data = atu_cleaner)



tally(~phys_diff, data = atu_cleaner)

atu_cleaner <- mutate(atu_cleaner, phys_diff = recode(phys_diff,"01"="did not","02" = "did"))
tally(~phys_diff, data = atu_cleaner)

atu_clean <- atu_cleaner
save(atu_clean, file = "atu_clean.Rda")
histogram(~calories | healthy_level, data = food)

food <- mutate(food, healthy_level  = as.factor(healthy_level ))
histogram(~calories | healthy_level, data = food)

food <- mutate(food, healthy_level = recode(healthy_level, "1"="Very Unhealthy","2" = "Unhealthy", "3" = "Neutral", "4" = "Healthy", "5" = "Very Healthy" ))

histogram(~calories | healthy_level, data = food)

save(food, file = "food.Rda")
# reviewed: 2026-05-27 23:14:43 [7] run-23572
# reviewed: 2026-06-01 19:56:29 [9] run-22255
# reviewed: 2026-06-07 16:20:13 [2] run-24535
