View(cdc)
bargraph(~depressed|describe_weight,data=cdc, type="percent", col="lightyellow",main = "How can depression affect a person's appetite and weight?" )

tally(~depressed|describe_weight,data=cdc,format="percent")
                        # reviewed: 2026-05-31 16:14:02 [9] run-6543
