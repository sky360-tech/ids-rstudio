View(cdc)
bargraph(~depressed|describe_weight,data=cdc, type="percent", col="lightyellow",main = "How can depression affect a person's appetite and weight?" )

tally(~depressed|describe_weight,data=cdc,format="percent")
                        # reviewed: 2026-05-31 16:14:02 [9] run-6543
# reviewed: 2026-06-06 16:09:27 [2] run-10216
# reviewed: 2026-06-11 18:18:24 [4] run-6199
# reviewed: 2026-06-16 18:55:51 [6] run-24519
# reviewed: 2026-06-21 16:47:20 [8] run-17889
# reviewed: 2026-06-27 16:08:06 [1] run-9271
# reviewed: 2026-07-02 16:52:49 [3] run-17409
# reviewed: 2026-07-07 17:19:59 [5] run-21958
# reviewed: 2026-07-12 16:01:42 [7] run-22498
# reviewed: 2026-07-17 16:17:35 [9] run-8016
