data(census)
exam<-slice(census, 1:200)
names(exam)
nrow(exam)
ncol(exam)
histogram(~Travel_time_to_school,data=exam)
range(~Travel_time_to_school,data=exam)
bargraph(~Travel_to_school,data=exam)
histogram(~Travel_time_to_school|Travel_to_school,data=exam,layout=c(1,4))
bwplot(~Travel_time_to_school|Travel_to_school,data=exam,layout=c(1,4))
MAD(~Travel_time_to_school|Travel_to_school,data=exam)
IQR(~Travel_time_to_school|Travel_to_school,data=exam)
bigfoot<-filter(exam,Footlength_cm>23)
tally(~Allergies|Vegetarian,data=exam,format="percent",margins=TRUE)

# reviewed: 2026-05-30 16:07:17 [6] run-19767
# reviewed: 2026-06-04 17:47:14 [8] run-16851
# reviewed: 2026-06-10 18:05:59 [1] run-980
# reviewed: 2026-06-15 19:05:14 [3] run-31614
# reviewed: 2026-06-20 16:22:25 [5] run-1764
# reviewed: 2026-06-25 17:13:25 [7] run-13970
# reviewed: 2026-06-30 17:07:42 [9] run-19923
