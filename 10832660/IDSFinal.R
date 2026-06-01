str(TimeSpentOnSocialMedia)
bargraph(~ How.much.time.do.you.spend.using.social.media.., data = TimeSpentOnSocialMedia, main = "Social Media Time Per Day", xlab = "Time Spent", ylab = "Number of Students", col = "lightyellow")
tally(~ How.much.time.do.you.spend.using.social.media.., data = TimeSpentOnSocialMedia)

bargraph(~ What.is.the.most.used.social.media.app.in.you.phone., data = TimeSpentOnSocialMedia, main = "Most Used Social Media App", xlab = "App", ylab = "Number of Students", col = "lightyellow")
tally(~ What.is.the.most.used.social.media.app.in.you.phone., data = TimeSpentOnSocialMedia)
# reviewed: 2026-06-01 19:56:29 [1] run-7422
