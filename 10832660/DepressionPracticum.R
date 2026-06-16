View(cdc)
bargraph(~depressed|describe_weight,data=cdc, type="percent", col="lightyellow",main = "How can depression affect a person's appetite and weight?" )

tally(~depressed|describe_weight,data=cdc,format="percent")
                        # reviewed: 2026-05-31 16:14:02 [9] run-6543
# reviewed: 2026-06-06 16:09:27 [2] run-10216
# reviewed: 2026-06-11 18:18:24 [4] run-6199
# reviewed: 2026-06-16 18:55:51 [6] run-24519
