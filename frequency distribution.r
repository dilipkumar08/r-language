#frequency dsitribution
head(mtcars)

carb=unique(mtcars$carb)
carb
u1=table(mtcars$carb)
barplot(u1,xlab='carburator',ylab='frequency',main='frequency distribution ')
  
u2=table(cut(mtcars$carb,8))
barplot(u2,xlab='carburator',ylab='frequency',main='frequency distribution ')
