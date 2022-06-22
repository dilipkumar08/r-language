#switch case
option=as.character(readline(prompt="Enter the operation to be performed (add,sub,div,mul):"))
a=10
b=20
switch(option,'add'=cat("addition :",a+b),'sub'=cat('subtraction :',abs(a-b)),'div'=cat('division :',a/b),'mul'=cat('multiplication :',a*b))
