cat("\014")
model=lm(mpg~wt+hp,data=mtcars)
summary(model)
x=predict(model,newdata=data.frame(wt=2.5,hp=275))
x