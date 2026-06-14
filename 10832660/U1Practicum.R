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
