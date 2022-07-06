library(ggplot2)
head(women)
scatter.smooth(women$height,women$weight,xlab='women height',ylab = "women weight")

#correlation
cor1=cor(women$height,women$height)
cor2=cor(women$height,women$weight)
cor3=cor(women$weight,women$height)
cor4=cor(women$weight,women$weight)

corw=cor(women)
print(corw)

#by spearman
cors=cor(women,method='spearman')
print(cors)

corm=matrix(data=c(cor1,cor2,cor3,cor4),ncol =2,byrow=TRUE)

cat("correlation matrix of women dataset \n",corm)

if(cor2>0)
{
  print("The relationship btw height and weight of the women dataset is positive")
}else
{
  print("The relationship btw height and weight of the women dataset is negative")
}
