#Factors and Data Frames

# Factor levels, summary, ordered factors
# Dataframe creation, subsetting, sorting

# Types of data
#- Categorical >>No order
#- Ordinal >>Ex: S,A,B,C
#- Interval >>specific ranges
# Factor is a statistical data type that stores categorical variables, which is used in statistical modelling
# 
# Factors are stored as vector of integer values with a set of character values
# To convert vector to a vector, the factor() functn can be used

blood <- c("B","A","AB","O","A")
#blood_factor = factor(blood)
blood_factor <- factor(blood,levels=c("A","B","AB","O"),labels=c("BT_A", "BT_B", "BT_AB", "BT_O"))
#elements in vectors should be equal to those in Levels, including case
#print(blood)
#print(blood_factor)
# print(str(blood_factor))
 #levels(blood_factor) <- c('A', 'B', 'AB', 'O')
 print(blood_factor)
print(summary(blood))
print(summary(blood_factor))

#Ordered Factors
# There are examples where natural ordering exists, sometimes w ehave to deal with factors that do have natural ordering. 
#  In the domain of categorical variables, there exists a difference between nominal categorical variables and ordinal categorical variable.names(
#    A nominal categorical variable, as mentioned earlier, has no implied order.

t <- c("L","S","M","M","S","L","L","S")
t_factor <- factor(t,order=TRUE ,levels = c("S","M","L"),labels=c("small","medium","large"))
print(t_factor)


# ===========================================================================================================================================================================





#Data frame
# Data sets typically comprise observations or instances, that have sokme variables associated with them.
# Data frame is a fundamental data structure to store data set.seed(A matrix cannot be used to store such information)

#creating data frame
#data.frame(ID,age,name)

id <- c(1:12)
age <- c(68,23,21,23,32,36,71,29,17,26,24,21)
name <- c('whitebeard','chopper','usopp','sanji','zoro','robin','garp','luffy','shanks','mihawk','nami','brook')
onepiece <- data.frame(id,age,name)
print(onepiece)
print(nrow(onepiece))
print(ncol(onepiece))
print(dim(onepiece))
print(min(onepiece$age))
print(max(onepiece$age))

#subsetting of dataframe
# The dataframes combines the features of matrices and lists
# To subset a data frame from both matrices and lists the following syntax can be used.
# '[' for subsetting matrices
# '[[' or '$' is used to select list elements 

print(onepiece[,3])
print(onepiece[2,3])
print(class(onepiece))
print(class(onepiece["age"]))
print(onepiece["age"])
print(onepiece[2,]) #only 2nd row
print(class(onepiece[,3]))

#write the command in R console to retrieve the name and id information from 2nd and 3rd rows
print(onepiece[c(3,4),c(2,3)])
print(onepiece[c(3:7),c('id','name')])
Age_df = onepiece["age"]
print(Age_df)
print(class(Age_df))
print(head(onepiece))
print(head(onepiece,8))
print(tail(onepiece))
print(tail(onepiece,8))
onepiece["height"] <- c(223,152,162,182,183,178,197,168,193,191,176,198)
print(onepiece)
villain <- c("kaido","bigmom","teach","crocodile","magellan","bellamy","akainu","Katakuri","king","queen","orochi","donflamingo")
villains=data.frame(villain)
onepiece <- cbind(onepiece,villains)
print(onepiece)
row <- data.frame(id=14,age=73,name="rayliegh",height=184,villain="ksajkjh")
onepiece <- rbind(onepiece,c(13,72,"roger",196,"bullet"))
onepiece <- rbind(onepiece,row)
print(sort(onepiece$age))
print(order(onepiece$age,decreasing = TRUE))

print(onepiece)

# ===========================================================================================================================================================================





#lists
# 
# Creating a list
# Accessing and manipulating list elements
# Merging lists 
# Converting lists to vectors
# list() is used to create a list
# List contains strings numbers, vectors and logical values 

Poneglyph <- list("Red","Blue",c(4,11),matrix(c(1:9),ncol = 3,nrow = 3),TRUE,800.1)
print(Poneglyph)
Red_Poneglyph <- Poneglyph[c(1,3,5)]
print(Red_Poneglyph)
names(Poneglyph) <- c("type1","type2","number","matrix","present","years")
print(Poneglyph$type1)
print(Poneglyph)

#Manipulating list elements
# Addition, deletion, updating
# elements can be added or deleted only at the end of the list 
# Update operation can be performed on any element in the list

Poneglyph[7] <- "Marines"
Poneglyph["opposition"] <- "World Government"
print(Poneglyph)


# unlist() is used to convert list into vectors
# write the command in R console to create two lists,each containing 5 elements and convert the list into vectors and perform addition operation on two vectors.
list1 = list(c(5,6,7,8,9))
list2 = list(5.8,6.5,7.3,8.2,9.9)
v1 <- unlist(list1)
v2 <- unlist(list2)
print(v1 + v2)


# ===========================================================================================================================================================================





# Conditionals and control flows
# > relational operators
# > Logical operators
# > Operators and vectors
# > Conditional statements

# Relational operators:
# how one objects relate to another 
# 
# (==) Equal to 
# (>) greater than
# (<) lesser than
# returns:
# TRUE,FALSE,T,F


linkedin = c(15,23,43,11,9,8)
print(T & T)
print(T & F)
print(F & F)
print(T | T)
print(T | F)
print(F | F)
print(!T)
print(!F)

# The working of logical operators with vectors and matrices is similar to that of relational operators ; the operations are performed element wise.

l1 = c(T,T,F) 
l2 = c(F,T,F)
print(l1 & l2)
print(l1 | l2)
print(l1 && l2)
print(l1 || l2)

#Conditional statements:

# if statement
# if(condition){
#   expression
# }
# If-else 
# if(condition){
#   expression
# }
# else{
#   expression
# }


if(5>2){
    print('Hehe')
  }else
    {
    print("not hehe")
  }
  
# if-else-if

if(1>2){
  print('Hehe')
}else if(7<3)
{
  print("not hehe")
}else
{print("Baka")
}




# ===========================================================================================================================================================================




# Iterative programming in R
# while and for loops 
# loops for vectors, marices,lists and data frames.


# while(test_expression){
#   statement
# }
i=-15
while(i<10){
  print("Maverick")
  i=i+1
}

# for(variable in start:end){
#   statement
# }

for(x in 5:10){
  print("Ashura")
  print(x)
}

for(k in v1){
  print("Ashuradhipathi")
  print(k)
}

m1=matrix(c(1:9),ncol=3,nrow=3)
m2=matrix(c(7:15),ncol=3,nrow=3,byrow=T)
for(a in 1:9){
  print(m1[k]+m2[k])
}

for(i in names(onepiece))
{
  print(onepiece[i])
  #print(onepiece$name[i])
}


# ===========================================================================================================================================================================
