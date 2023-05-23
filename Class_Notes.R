#ARRAY
# An array is an collection of similar data of the same data type
# R uses a vector to create an array if there is a dimension vector with dim attributes.
# array() is used to create an array
# Syntax:
#   array(data,dim,dimname)
# 
# data - input values
# dim - used to create dimensions
# dimname - used to assign a name to dim

#code

v <- c(1,2,3,4,5,6)
res <- array(v)
print(res)
a = array(c(1:10), dim =c(3,3))
print(a)
#b = array(c(1:10), dim =c(3,3,2)) 3rd value in dim, is the number of times the matrix
#will be created
#print(b)
c = array(c(1:10), dim =c(3,3), dimnames = list(c('k','l','m')))
print(c)


#CLASS

# every entity is considered as an object and every object is associated with a class
# use class keyword to create class
# 
# S3 classes are used to implement an object oriented (OO) concept known as generic function OO.
# In S3 class, we use the concept of list property, where a list is created and a list class is set and returned.


#code

food <- function(Food=TRUE,myFavt="biryani")
{
  k <- list(
    hasFood = Food,
    favtfood=myFavt
  )
  
  class(k) <- append(class(k),"India")
  return(k)
}
obj <- food()
print(obj$favtfood)
Gveg <- food(Food=FALSE,myFavt="idly")
print(Gveg$favtfood)





