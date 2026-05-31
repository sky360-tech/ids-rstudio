zero <- rep("0", times = 1)
one <- rep("1", times = 1)
two <- rep("2", times = 1)
three <- rep("3", times = 1)
four <- rep("4", times = 1)
five <- rep("5", times = 1)
six <- rep("6", times = 1)
seven <- rep("7", times = 1)
eight <- rep("8", times = 1)
nine <- rep("9", times = 1)

lotto <- c(zero, one, two, three, four, five, six, seven, eight, nine)

sample(lotto, size = 3, replace = TRUE)

set.seed(126)

Daily3 <- do(2000) * sample(lotto, size = 3, replace = TRUE)

View(Daily3)


win <- filter(Daily3, V1=="6",V2=="1", V3=="0")

win2 <- filter(Daily3, V1=="6",V2=="1")


win3 <- filter(Daily3,V2=="1", V3=="0")
# reviewed: 2026-05-31 16:14:02 [2] run-29417
