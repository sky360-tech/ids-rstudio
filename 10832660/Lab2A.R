View(personalityColor)
ncol(personalityColor)
nrow(personalityColor)
dotPlot(~ blue,data=personalityColor,main ="Predominant Color: Blue",nint=13)
mean(~blue, data = personalityColor)
median(~blue, data = personalityColor)
add_line(vline = mean(~blue, data = personalityColor))
MAD(~blue, data = personalityColor)

dotPlot(~ blue|int_ext,data=personalityColor,main ="Predominant Color: Blue",nint=13, cex=.5)

mean(~blue|int_ext, data = personalityColor)
median(~blue|int_ext, data = personalityColor)
MAD(~blue|int_ext, data = personalityColor)

dotPlot(~ blue|int_ext,data=personalityColor,nint=13, cex=.5)
dotPlot(~ gold|int_ext,data=personalityColor,nint=12, cex=.5)
dotPlot(~ green|int_ext,data=personalityColor,nint=13, cex=.5)
dotPlot(~ orange|int_ext,data=personalityColor,nint=16, cex=.3)

mean(~orange|int_ext, data = personalityColor)

MAD(~orange|int_ext, data = personalityColor)

median(~orange|int_ext, data = personalityColor)
dotPlot(~ blue|int_ext,data=personalityColor,main ="Predominant Color: Blue",nint=13, cex=.5, layout = c(1,2))




str(personalityColor)
nrow(personalityColor)

mean(~green,data=personalityColor)

greenmeans<-mean(~green|int_ext,data=personalityColor)

diff(greenmeans)


dotPlot(~green|int_ext,data=personalityColor,nint=13,cex=.5,layout=c(1,2))

dotPlot(~orange|int_ext,data=personalityColor,nint=13,cex=.5,layout=c(1,2))

dotPlot(~gold|int_ext,data=personalityColor,nint=13,cex=.5,layout=c(1,2))
# reviewed: 2026-05-28 18:17:49 [1] run-19708
# reviewed: 2026-06-02 18:43:10 [3] run-22789
# reviewed: 2026-06-07 16:20:13 [5] run-30408
# reviewed: 2026-06-12 17:38:49 [7] run-8354
# reviewed: 2026-06-17 17:50:05 [9] run-23988
# reviewed: 2026-06-23 17:19:43 [2] run-24262
# reviewed: 2026-06-28 16:15:06 [4] run-6791
# reviewed: 2026-07-03 16:37:25 [6] run-405
# reviewed: 2026-07-08 16:42:18 [8] run-26884
# reviewed: 2026-07-14 16:18:47 [1] run-6779
# reviewed: 2026-07-19 15:59:52 [3] run-17130
