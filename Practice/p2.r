#Factor
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

#List
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


