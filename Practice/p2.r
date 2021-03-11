#1. Factor
mtcars
str(mtcars)
head(mtcars)
tail(mtcars)
dim(mtcars)

mtcars$mpg > 20
mtcars[mtcars$mpg > 20,]
mtcars[mtcars$mpg > 20, 'cyl']
mtcars$cyl == 4
mtcars[mtcars$cyl == 4, ]

mean(mtcars[mtcars$disp < 100, 'wt'])

#2. List
my_vector <- 1:10
my_matrix <- matrix(1:9, ncol = 3)
my_df <- mtcars[1:3, ]

my_list <- list(my_vector, my_matrix, my_df)
my_list

my_list <- list(vec = my_vector, mat = my_matrix, df = my_df)
my_list

my_list[[1]]
my_list[['vec']]
my_list['vec']
my_list[1]

my_list$new_vector <- c(1, 3, 5, 7, 9)
str(my_list)
my_list[['new_vector']]

#3. if Statement
medium <- "LinkedIn"
num_views <- 14

if(medium == "LinkedIn"){
  print("Showing LinkedIn information")
}

if(num_views > 14){
  print("You are right!")
}else{
  print("You are wrong.")
}

#4. For Loop
cities <- c("NY", "CL", "CH", "SF", "BT", "AZ")
for(city in cities){
  print(city)
}

#5. Vectorized Operation
my_vector <- c(1,2,3,4,5)
my_vector

result_vector <- rep(0, 5)
result_vector
for(i in 1:5){
  result_vector[i] <- my_vector[i] + 2
}
print(result_vector)

result_vector2 <- my_vector + 2
result_vector2

numbers_vector <- c(1,3,4,2,6,8,7,5)
numbers_even_odd <- ifelse(numbers_vector %% 2 == 0, "Even", "Odd")
numbers_even_odd
table(numbers_even_odd)

avg_mpg <- mean(mtcars$mpg)
new_var <- ifelse(mtcars$mpg >= avg_mpg, "Good", "Bad")

## adding new variable to mtcars
mtcars$fuel_efficiency <- new_var
head(mtcars)

#6. Function
## 세제곱을 하는 함수
cube <- function(n){
  return(n*n*n)
}
cube(10)
cube(1:3)

is.even.number <- function(n){
  n %% 2 == 0
}
is.even.number(10)
is.even.number(5)
is.even.number(c(1,3,4,2,5,7,9,8))
numbers_vector3 <- c(1,4,2,3,5,6,9,8,7)
ifelse(is.even.number(numbers_vector3), "T", "F")

diff.max.min <- function(...){
  a <- c(...)
  largest <- max(a)
  smallest <- min(a)
  
  largest - smallest
}
diff.max.min(4,3,66,2,88,9,100,3,8)
diff.max.min(-12, 4, 1,2,6,8,12)

my.vector4 <- c(1,3,5,8,13)
my.vector4*2
my.vector4 > 5
ifelse(my.vector4 > 5, "L", "S")


