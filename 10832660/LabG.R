data(atu_clean)
View(atu_clean)
tally(~ sex, data = atu_clean)
bargraph(~phys_challenge | sex, data = atu_clean)
tally(~ phys_challenge | sex, data = atu_clean)
tally(~ phys_challenge | sex, data = atu_clean,  format = "percent")
tally(~ phys_challenge | sex, data = atu_clean, margins = TRUE)
tally(~phys_challenge | sex, data = atu_clean, margin = TRUE, format = "percent")

tally(~ age| sex, data = atu_clean)

tally(~food_salty <- filter(food, salty_sweet == "Salty")
      
      
part_time <- filter(atu_clean, fulltime_emp == "Part time")
View(part_time)
tally(~fulltime_emp | sex, data = atu_clean, margin = TRUE, format = "percent")
# reviewed: 2026-05-29 18:14:01 [3] run-15381
