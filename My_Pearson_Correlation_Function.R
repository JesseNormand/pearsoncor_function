#Exploring pearson correlation by creating my own cor function

fun_correlation <- function(x,y) {

mean_x <- mean(x)
mean_y <- mean(y)

#calculate dot product
numerator <-  sum((x - mean_x) * (y - mean_y))
#normalize the data by dividing by x - mean
denominator_x <-  sqrt(sum((x - mean_x) ^ 2))
denominator_y <- sqrt(sum((y - mean_y) ^ 2))

fun_correlation <- numerator / (denominator_x * denominator_y)

print(fun_correlation)

}

#sample data

x <- sample(seq(4,20,1), 30, replace = TRUE)
y <- sample(seq(5,25,1), 30, replace = T)

#run function
fun_correlation(x,y)




 