# Inspect data
head(iris)
str(iris)
View(iris)
class(iris)

# Basic Bar Chart
barplot(table(iris$Species))

# Labelled bar chart
barplot(
  table(iris$Species),
  main = "Count of Iris Species",
  xlab = "Species",
  ylab = "Number of Flowers",
  col = "lightblue"
)

# Mean sepal length per species
mean_sepal <- tapply(iris$Sepal.Length, iris$Species, mean)
mean_sepal

barplot(
  mean_sepal,
  col = "violet",
  main = "Average Sepal Length by Species",
  ylab = "Mean Sepal Length"
)

# Grouped data (4 variables)
group_means <- rbind(
  Sepal_l = tapply(iris$Sepal.Length, iris$Species, mean),
  Sepal_w = tapply(iris$Sepal.Width, iris$Species, mean),
  Petal_l = tapply(iris$Petal.Length, iris$Species, mean),
  Petal_w = tapply(iris$Petal.Width, iris$Species, mean)
)

group_means

# Grouped (clustered) bar chart
barplot(
  group_means,
  beside = TRUE,
  col = c("skyblue","pink","lightgreen","orange"),
  legend.text = TRUE,
  main = "Grouped Bar Chart: Sepal & Petal Measurements"
)

# Stacked bar chart
barplot(
  group_means,
  beside = FALSE,
  col = c("skyblue","pink","lightgreen","orange"),
  legend.text = TRUE,
  main = "Stacked Bar Chart: Sepal & Petal Measurements"
)