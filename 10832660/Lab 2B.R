View(personalityColor)
max(~blue,data=personalityColor)

min(~blue,data=personalityColor)

range(~blue,data=personalityColor)
quantile(~blue, data =personalityColor,p = 0.25)	  

quantile(~blue, data =personalityColor,p = 0.75)	  
dotPlot(~ blue|int_ext,data=personalityColor,nint=13)
add_line(vline = quantile(~blue, data=personalityColor))
median(~blue,data=personalityColor)
IQR(~orange,data=personalityColor)
IQR(~green,data=personalityColor)
IQR(~gold,data=personalityColor)
bwplot(~blue,data=personalityColor)
favstats(~blue, data=personalityColor)	
values <- range(~blue, data=personalityColor)
diff(values)
mm_diff <- function(variable, data) {
  mean_val <- mean(variable, data = data)
  med_val <- median(variable, data = data)
  abs(mean_val - med_val)
}
mean(~blue, data = personalityColor)
median(~blue, data = personalityColor)

mean(~orange, data = personalityColor)
median(~orange, data = personalityColor)

mean(~gold, data = personalityColor)
median(~gold, data = personalityColor)

mean(~green, data = personalityColor)
median(~green, data = personalityColor)


Range <- function (variable, data) {
  values <- range(variable, data = data)
  diff(values)
}

Range(~blue,data=personalityColor)

Range(~green,data=personalityColor)

Range(~gold,data=personalityColor)

Range(~orange,data=personalityColor)


Range <- function (variable, data) {
  values <- range(variable, data = data)
  diff(values)
}

dotPlot(~ blue,data=personalityColor,nint=13)

myIQR <- function(variable, data) {
  q35 <- quantile(variable,data = data, p=0.35)
  q65 <- quantile(variable,data = data, p=0.65)
  q65-q35
}
myIQR(~blue,data = personalityColor)
add_line(vline = quantile(~blue, data=personalityColor))

mm_diff(~blue,data=personalityColor)

mm_diff(~orange,data=personalityColor)

mm_diff(~gold,data=personalityColor)

mm_diff(~green,data=personalityColor)

# reviewed: 2026-06-01 19:56:29 [2] run-6552
# reviewed: 2026-06-06 16:09:27 [4] run-27410
# reviewed: 2026-06-11 18:18:24 [6] run-23203
# reviewed: 2026-06-16 18:55:51 [8] run-21187
# reviewed: 2026-06-22 18:49:23 [1] run-19908
# reviewed: 2026-06-27 16:08:06 [3] run-5458
# reviewed: 2026-07-02 16:52:50 [5] run-4031
