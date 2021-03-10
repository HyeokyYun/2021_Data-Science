#1
movie <- c("The Avengers", "Harry Potter", "Home Alone", "Toy Story", 
           "Frozen", "The Notebook", "Interstellar")
movie

#2
My_rating <- c(4.3, 2.1, 3.5, 4.5, 1.5, NA, 3.9)
My_rating

#3
TA_rating <- c(4.3, NA, 3.8, 3.0, 2.8, NA, 1.6)
TA_rating
Mem1_rating <- c(2.0, 3.8, NA, 5.0, 4.2, 3.0, 1.7)
Mem2_rating <- c(4.0, 1.8, 3.2, 4.7, NA, 1.8, 3.2)
Mem3_rating <- c(3.8, 3.5, 4.4, NA, 2.8, NA, 4.3)

#4
team_matrix <- matrix(c(TA_rating, My_rating, Mem1_rating, Mem2_rating, Mem3_rating), nrow = 5, 
                      byrow = T)
team_matrix

#5
stu_mean <- rowMeans(team_matrix, na.rm = T)
stu_mean

#6
movie_sum <- colSums(team_matrix, na.rm = T)
movie_sum

#7
team_matrix <- cbind(team_matrix, stu_mean)
team_matrix

#8
team_matrix <- rbind(team_matrix, movie_sum)
team_matrix

#9
team_matrix[6, 8] <- NA
team_matrix

#10
titles <- c(movie, "stu_mean")
titles
names <- c("TA", "ME", "Mem1", "Mem2", "Mem3", "movie_sum")
names

colnames(team_matrix) <- c(titles)
team_matrix
rownames(team_matrix) <- names
team_matrix

#11
rowMeans(team_matrix[c(2,3,4,5), 1:7], na.rm = T)

#12
colMeans(team_matrix[1:5, c(1,3,5,6,7)], na.rm = T)
