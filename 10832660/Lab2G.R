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


