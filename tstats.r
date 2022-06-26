#t-statistics
head(precip)
t.statistic=function(thesample,thepopulation)
{
  numerator=mean(thesample)-mean(thepopulation)
  denominator=sd(thesample)/sqrt(length(thesample))
  tstat=numerator/denominator
  return (tstat)
}

precip.population=rnorm(100000,mean=38)
tstats=as.numeric(10000)
for (i in 1:tstats)
{
  a.sample=sample(precip.population,70)
  tstats[i]=t.statistic(a.sample,precip.population)
}
tmp=data.frame(val=tstats)
library(ggplot2)
qplot(tmp$val,xlab="sample distribution",ylab="frequency",main="t-statstics",geom='histogram',color=I("white"))
t.statistic(precip,precip.population)
t.test(precip,mu=38,alternative='less')
