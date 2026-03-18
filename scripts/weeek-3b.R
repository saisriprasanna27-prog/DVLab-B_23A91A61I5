?airquality
class(airquality)
hist(airquality$Ozone)
View(airquality)

air_q <- as.data.frame(airquality)
class(air_q)
View(air_q)

library(ggplot2)

ggplot(
  air_q,
  aes(x = Ozone)
)+
  geom_histogram(
    bins = 10,
    fill = "pink",
    col = "red"
  )+
  labs(
    title = "GGPLOT - Histogram of Ozone Concentration in Air",
    y = "Frequency",
    x = "Ozone"
  )+
  theme_minimal()