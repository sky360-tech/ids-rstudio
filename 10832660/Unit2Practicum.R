View(titanic)

UFC_DATA <- read_csv("UFC_Fights_3Rd_Decisions_Disparities.csv")

ufc_final <- filter(UFC_DATA, F1.Winner. == 1, Fight.Method == "Decision - Unanimous" | Fight.Method == "Decision - Split")


mean(~Sig..Strike.Landed.R3..Disp. | Fight.Method, data = ufc_final)
set.seed(1)

shfls <- do(2000) * mean(~Sig..Strike.Landed.R3..Disp. | shuffle(Fight.Method), data = ufc_final)

head(shfls)

shfls <- mutate(shfls, diff = Decision...Unanimous - Decision...Split)

histogram(~diff, data = shfls, fit = "Normal", xlim = c(-8, 8), main = "Shuffled Differences", col="lightgreen")
add_line(vline = 6.03)

str(ufc_final)




diff_mean <- mean(~diff, data = shfls)
diff_sd <- sd(~diff, data = shfls)
1 - pnorm(6.03, mean = diff_mean, sd = diff_sd)

# reviewed: 2026-05-29 18:14:01 [9] run-10280
# reviewed: 2026-06-04 17:47:14 [2] run-3456
# reviewed: 2026-06-09 17:26:07 [4] run-1936
# reviewed: 2026-06-14 16:25:52 [6] run-30035
# reviewed: 2026-06-19 17:21:02 [8] run-17073
# reviewed: 2026-06-25 17:13:24 [1] run-23940
