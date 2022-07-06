head(mtcars)
scatter.smooth(mtcars$wt,mtcars$mpg,xlab = 'weight',ylab='mileage')

cormw=cor(mtcars$wt,mtcars$mpg)
print(cormw)

cormws=cor(mtcars$wt,mtcars$mpg,method="spearman")
print(cormws)

if(cormw>0)
{
  print('The relationship between mileage and the car weight is positive')
} else{
  print('The relationship between mileage and the car weight is negative')
 }
