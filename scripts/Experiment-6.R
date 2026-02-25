#Load & Understand the iris Dataset
data(iris)
str(iris)
View(iris)

#Basic Scatter Plot: Sepal Length vs Sepal Width
plot(iris$Sepal.Length,iris$Sepal.Width)

#Labeled Scatter Plot
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  main = "Sepal Length vs Sepal Width",
  xlab = "Sepal Length(cm)",
  ylab = "Sepal Width(cm)",
  col = "blue",
  pch = 16
)

#Colored Scatter Plot by Species
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  col = as.numeric(iris$Species),
  pch = 16,
  main = "Sepal Dimensions by Species"
)

legend(
  "topright",
  legend = levels(iris$Species),
  col = 1:3,
  pch = 16
)

#Multivariate Scatter
#Add size as a third variable
plot(
  Iris$Sepal.Length,
  Iris$Sepal.Width,
  col = as.numeric(iris$Species),
  pch = 16,
  cex = iris$Petal.Length/max(iris$Petal.Length),
  main = "Multivariate Scatter Plot(Color + Size)"
)
pairs(
  iris[,1:4],
  
  col=as.numeric(iris$Species),
  pch=16,
  main="Scatter Plot Matrix of iris  Dataset"
  library(ggplot2)
  ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width))+
    geom_point()
  ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width,color=Species))+
    ggplot(
      iris,
      aes(
        x=Sepal.Length,
        y=Sep
      )
    )