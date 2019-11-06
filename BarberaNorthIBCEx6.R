# making sure my working directory is where the good stuff is
setwd("/Users/carlybarbera/Desktop/Biocomputing_Junk/IBC_Exercise_06")

#loading in the csv file from the IBC_Ex6 repository
iris <- read.csv("iris.csv")

# to replicate the head function we used in Unix
head(iris, 2)
# but, without actually using head
iris[1:2,]
# or if we want to make the number of rows that we print
# into a variable 
n <- 2
iris[1:n,]

# to print the last two rows in the last two columns 
tail(iris[,4:5],2)

# to get the number of each species 
speciesnumbers <- list(
  virginica = sum(iris$Species == "virginica"),
  versicolor =sum(iris$Species == "versicolor"),
  setosa = sum(iris$Species == "setosa")
)

# to get rows with sepal width > 3.5
sepalwidth3.5 <- iris[iris$Sepal.Width > 3.5,]

# writing setosa data to a csv file
write.csv(iris[iris$Species == "setosa",], "setosa.csv")


# to do the mean, min, and max of the petal length 
# of viginica species
summaryvirginica <- list(
  mean = mean(iris[iris$Species == "virginica", 3]),
  min = min(iris[iris$Species == "virginica", 3]),
  max = max(iris[iris$Species == "virginica", 3])
  )





