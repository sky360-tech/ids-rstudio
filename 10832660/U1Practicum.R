histogram(~protein | when,data=food, type = "percent", main = "When do people eat the most protein?", col = "lightgreen")
 my_sub <- filter(food , salty_sweet == "Salty", calories < 200)
histogram(~protein,data=food, group = when)
extra_labs(1)


proteinWhen <- filter(food , protein > 5)


histogram(~protein | when,data=proteinWhen, main = "When do people eat the most protein?", col = "lightgreen")

histogram(~protein | when,data=proteinWhen, type = "percent", main = "When do people eat the most protein?", col = "lightgreen", xlim=c(5,20), ylim=c(0,48))
histogram(~protein | when,data=proteinWhen, type = "percent", main = "When do people eat the most protein?", col = "lightgreen",  scales=list(x=list(at=seq(4,20,4))))

histogram(~protein | when,data=proteinWhen, type = "percent", main = "When do people eat the most protein?", col = "lightgreen", breaks=seq(0, 32, 4), scales=list(x=list(at=seq(0,32,4))))
# reviewed: 2026-05-29 18:14:01 [7] run-12426
# reviewed: 2026-06-03 18:48:29 [9] run-5615
# reviewed: 2026-06-09 17:26:07 [2] run-8570
# reviewed: 2026-06-14 16:25:51 [4] run-657
# reviewed: 2026-06-19 17:21:02 [6] run-17235
# reviewed: 2026-06-24 17:07:42 [8] run-28986
# reviewed: 2026-06-30 17:07:41 [1] run-7665
# reviewed: 2026-07-05 16:11:51 [3] run-29237
# reviewed: 2026-07-10 16:59:00 [5] run-15271
# reviewed: 2026-07-15 16:25:57 [7] run-22858
# reviewed: 2026-07-20 16:26:10 [9] run-14989
