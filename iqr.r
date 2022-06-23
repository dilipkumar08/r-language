x=c(5,6,7,8,9,10,11,12,14,15)
#minimum quartile
minq=quantile(x,0)
minq
#first quartile
firstq=quantile(x,0.25)
firstq
#second quartile
secondq=quantile(x,0.5)
secondq
#third quartile
thirdq=quantile(x,.75)
thirdq
#max quartile
maxq=quantile(x,1)
maxq

#all the quartiles
aq=quantile(x,prob=c(0,.25,.50,.75,1))
summary(aq)

#boxplot for interquartile range
boxplot(aq,main="Interquartile range")
#IQR is first quantile - third quantile
as.numeric(thirdq)-as.numeric(firstq)

IQR(x)
