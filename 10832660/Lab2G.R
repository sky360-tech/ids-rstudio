dim(personalityColor)
dim(stress)

nrow(stress)+nrow(personalityColor)
merge(stress,personalityColor,by="user.id")
stress_colors<-merge(stress,personalityColor,by="user.id")
View(stress_colors)
merge(stress,personalityColor,by="user.id")
save(stress_colors, file = "stress_colors.Rda")

dotPlot(~stress|p_color,data=stress_colors)
histogram(~stress|p_color,data=stress_colors)
bwplot(~stress|p_color,data=stress_colors)


# reviewed: 2026-05-28 18:17:49 [7] run-20242
# reviewed: 2026-06-02 18:43:10 [9] run-26926
# reviewed: 2026-06-08 17:57:40 [2] run-28541
# reviewed: 2026-06-13 16:16:51 [4] run-21217
# reviewed: 2026-06-18 18:06:43 [6] run-25703
# reviewed: 2026-06-23 17:19:44 [8] run-24960
# reviewed: 2026-06-29 17:41:05 [1] run-26585
# reviewed: 2026-07-04 16:06:21 [3] run-16581
# reviewed: 2026-07-09 17:23:11 [5] run-4950
# reviewed: 2026-07-14 16:18:48 [7] run-23020
