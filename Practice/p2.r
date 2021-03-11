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
