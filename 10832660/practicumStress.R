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
