dim(babies)
histogram(~bwt, data = babies)
histogram(~bwt, data = babies,fit = "normal")
mean(~bwt, data = babies)
mean_bwt<-mean(~bwt, data = babies)

sd(~bwt,data=babies)

sd_bwt<-sd(~bwt,data=babies)
119.5769+18.23645
119.5769+18.23645+18.23645
119.5769+18.23645+18.23645+18.23645


119.5769-18.23645
119.5769-18.23645-18.23645
119.5769-18.23645-18.23645-18.23645



View(atus)


add_line(vline=119.57, col="brown")
add_line(vline=137.8, col="red")
add_line(vline=101.4, col="yellow")
add_line(vline=156, col="green")
add_line(vline=83.2, col="purple")
add_line(vline=174.17, col="black")
add_line(vline=65, col="magenta")


one_sd_bwt<-filter(babies,bwt>101.4,bwt<137.8)
861/1236


two_sd_bwt<-filter(babies,bwt>83.2,bwt<156)

dim(two_sd_bwt)
1171/1236


pnorm(126.4,mean=119.6,sd=18.2)


View(atus)
histogram(~sleep, data = atus,breaks=seq(0,1500,by=100),scales=list(x=list(at=seq(0, 1500,by=100))), main="Distribution of sleep in minutes",fit="normal")

mean(~sleep,data=atus)
add_line(vline=544.57)
sd(~sleep,data=atus)



histogram(~calories, data = food,breaks=seq(0,550,by=50),main="Distribution of scalories",fit="normal")
add_line(vline=135.19)
sd(~calories,data=food)


# reviewed: 2026-05-30 16:07:17 [1] run-9476
