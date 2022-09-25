A=read.csv("https://raw.githubusercontent.com/ajawid158/statDataAnalysis/main/iris.csv")
> dim(A)
[1] 244   7
> names(A)
[1] "total_bill" "tip"        "sex"        "smoker"    
[5] "day"        "time"       "size"
> names(A)
[1] "total_bill" "tip"        "sex"        "smoker"    
[5] "day"        "time"       "size"      



> length(A$size)
[1] 244



#Frequency Distribution Table of Size Variable in iris dataset
> B=fdt(A$size)
> summary(B)
Class limits   f   rf rf(%)  cf  cf(%)
[0.99,1.553)   4 0.02  1.64   4   1.64
[1.553,2.117) 156 0.64 63.93 160  65.57
[2.117,2.68)   0 0.00  0.00 160  65.57
[2.68,3.243)  38 0.16 15.57 198  81.15
[3.243,3.807)   0 0.00  0.00 198  81.15
[3.807,4.37)  37 0.15 15.16 235  96.31
[4.37,4.933)   0 0.00  0.00 235  96.31
[4.933,5.497)   5 0.02  2.05 240  98.36
[5.497,6.06)   4 0.02  1.64 244 100.00
