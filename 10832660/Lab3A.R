bwplot(~elapsed_time|group,data=TimePerception,layout=c(1,2))

histogram(~elapsed_time|group,data=TimePerception,layout=c(1,2))
iqr(~elapsed_time|group,data=TimePerception)

TimePerception_clean <- filter(TimePerception, elapsed_time < 100)
bwplot(~elapsed_time|group, data=TimePerception_clean, layout=c(1,2))


favstats(~elapsed_time|group, data=TimePerception_clean)
mean(elapsed_time ~ group, data=TimePerception_clean)


set.seed(123)
actual_diff <- 67.84211-60.42105
shfl_group <- do(2000) * diffmean(elapsed_time ~ shuffle(group), data = TimePerception_clean)


histogram(~diffmean, data = shfl_group, groups = (diffmean >= actual_diff),v = actual_diff,xlab = "Shuffled Difference in Means (seconds)",main = "Distribution of Time Perception Differences")

diff_mean <- mean(~diffmean, data = shfl_group)
diff_sd <- sd(~diffmean, data = shfl_group)
p_value <- 1 - pnorm(actual_diff, mean = diff_mean, sd = diff_sd)
# reviewed: 2026-05-29 18:14:01 [1] run-4616
# reviewed: 2026-06-03 18:48:28 [3] run-17725
# reviewed: 2026-06-08 17:57:40 [5] run-6768
# reviewed: 2026-06-13 16:16:51 [7] run-9966
# reviewed: 2026-06-18 18:06:44 [9] run-11213
# reviewed: 2026-06-24 17:07:41 [2] run-31059
# reviewed: 2026-06-29 17:41:05 [4] run-20547
# reviewed: 2026-07-04 16:06:21 [6] run-18570
# reviewed: 2026-07-09 17:23:11 [8] run-26653
# reviewed: 2026-07-15 16:25:57 [1] run-7075
