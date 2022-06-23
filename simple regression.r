cat("\014")
head(mtcars)
model=lm(mpg~wt,data=mtcars)
plot(mtcars$mpg,mtcars$wt,xlab="mileage",ylab="weight", main="simple linear regression")
abline(model,col="red")
summary(model)
prempg=predict(model,data.frame(wt=6))
prempg
