histogram(~howmanypeople|p_color+int_ext,data=stress_color_all,nint=4)


bwplot(~howmanypeople|p_color+int_ext,data=stress_color_all)


dotPlot(~howmanypeople|p_color+int_ext,data=stress_color_all,cex=1)



mean(~howmanypeople|p_color+int_ext,data=stress_color_all)
  
median(~howmanypeople|p_color+int_ext,data=stress_color_all)


bwplot(~howmanypeople|p_color+int_ext,data=stress_color_all,col="green")


histogram(~howmanypeople|p_color+int_ext,data=stress_color_all,nint=4,col="green")

bwplot(~howmanypeople|p_color+int_ext,data=stress_color_all,main = "Relationship between primary color, people around, and introvert and extrovert", xlab = "Number of people",col="red")


histogram(~howmanypeople|p_color+int_ext,data=stress_color_all,main = "Relationship between primary color, people around, and introvert and extrovert", xlab = "Number of people",col="green",nint=4,type="percent")


# reviewed: 2026-05-31 16:14:02 [1] run-5227
# reviewed: 2026-06-05 17:21:51 [3] run-250
# reviewed: 2026-06-10 18:05:59 [5] run-27983
# reviewed: 2026-06-15 19:05:14 [7] run-3665
# reviewed: 2026-06-20 16:22:26 [9] run-24381
# reviewed: 2026-06-26 17:02:49 [2] run-7789
# reviewed: 2026-07-01 17:19:56 [4] run-18542
# reviewed: 2026-07-06 17:45:43 [6] run-31775
# reviewed: 2026-07-11 15:59:08 [8] run-2619
# reviewed: 2026-07-17 16:17:35 [1] run-16208
# reviewed: 2026-07-22 16:20:55 [3] run-7233
