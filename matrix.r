
a=matrix(data=c(3,2,9,5),nrow=2,ncol=2,byrow = TRUE)
b=matrix(data=c(7,1,6,4),nrow=2,ncol=2,byrow = FALSE)

#creating matrix using r and c bind
c=rbind(c(1,2,3),c(4,5,6))
d=cbind(c(4,3,2),c(6,7,8))

cat("Matrix a")
a
cat("Matrix b")
b
cat("Matrix c")
c
cat("Matrix d")
d

#addition of two matrices
a+b

#subracting two matrices
a-b

#multiplication of two matrices
c%*%d

#scalar multiplication
8*a

#inverse of matrix
solve(a)

#transpore
t(d)

#getting the diagnol
diag(a)

#creating a matrix by getting input values from user

print("Enter the size of the matrix")
m=as.integer(readline(prompt="no of rows ,m="))
n=as.integer(readline(prompt="no of columns,n="))
asize=m*n
avec=vector(mode='integer',length=0)
for(i in 1:asize)
{
 mv1=as.integer(readline(prompt = "Enter the value :"))
 avec=c(avec,mv1)
}
A=matrix(data=avec,nrow=m,ncol=n,byrow=TRUE)
A
