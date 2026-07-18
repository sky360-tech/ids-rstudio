load(cdc)
data(cdc)
view(cdc)
View(cdc)
names(cdc)
?cdc
names(cdc)
str(cdc)
bargraph(~height, data = cdc)
histogram(~height, data = cdc)
bargraph(~age, data = cdc)
histogram(~age, data = cdc)
xyplot(age~weight, data = cdc)
histogram(~weight, data = cdc)
histogram(~weight, data = cdc, nint = 3)
nint = 3
nint = 1
histogram(~weight, data = cdc, nint = 100)
bargraph(~drive_text, data = cdc)
bargraph(~ drive_text, data = cdc, groups = sex)
histogram(~height, data = cdc, groups = sex)
histogram(~ height | sex, data = cdc)
bargraph(~ drive_text | sex, data = cdc)
bargraph(~ drive_text | seat_belt, data = cdc)
bargraph(~ drive_text | age, data = cdc)
bargraph(~drink_sportdrink,data=cdc,groups=sex)
histogram(~height|grade,data=cdc)
bargraph(~screen_time,data=cdc,groups=sex)

bargraph(~days_exercise_60|sex,data=cdc)
nrow(cdc)
# reviewed: 2026-05-27 23:14:42 [3] run-18869
# reviewed: 2026-06-01 19:56:29 [5] run-13178
# reviewed: 2026-06-06 16:09:27 [7] run-16726
# reviewed: 2026-06-11 18:18:24 [9] run-21515
# reviewed: 2026-06-17 17:50:05 [2] run-25120
# reviewed: 2026-06-22 18:49:23 [4] run-15086
# reviewed: 2026-06-27 16:08:07 [6] run-20184
# reviewed: 2026-07-02 16:52:50 [8] run-24024
# reviewed: 2026-07-08 16:42:18 [1] run-22826
# reviewed: 2026-07-13 17:15:37 [3] run-13194
# reviewed: 2026-07-18 15:59:58 [5] run-31429
