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
# reviewed: 2026-06-03 18:48:28 [5] run-12165
# reviewed: 2026-06-08 17:57:40 [7] run-3142
# reviewed: 2026-06-13 16:16:51 [9] run-10318
# reviewed: 2026-06-19 17:21:02 [2] run-11784
# reviewed: 2026-06-24 17:07:42 [4] run-25365
# reviewed: 2026-06-29 17:41:05 [6] run-8623
# reviewed: 2026-07-04 16:06:21 [8] run-31237
# reviewed: 2026-07-10 16:59:00 [1] run-12659
