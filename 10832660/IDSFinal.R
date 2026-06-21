str(TimeSpentOnSocialMedia)
bargraph(~ How.much.time.do.you.spend.using.social.media.., data = TimeSpentOnSocialMedia, main = "Social Media Time Per Day", xlab = "Time Spent", ylab = "Number of Students", col = "lightyellow")
tally(~ How.much.time.do.you.spend.using.social.media.., data = TimeSpentOnSocialMedia)

bargraph(~ What.is.the.most.used.social.media.app.in.you.phone., data = TimeSpentOnSocialMedia, main = "Most Used Social Media App", xlab = "App", ylab = "Number of Students", col = "lightyellow")
tally(~ What.is.the.most.used.social.media.app.in.you.phone., data = TimeSpentOnSocialMedia)
# reviewed: 2026-06-01 19:56:29 [1] run-7422
# reviewed: 2026-06-06 16:09:27 [3] run-7470
# reviewed: 2026-06-11 18:18:24 [5] run-25692
# reviewed: 2026-06-16 18:55:51 [7] run-20014
# reviewed: 2026-06-21 16:47:20 [9] run-3855
