
library(ggplot2)

data(faithful)
model <- lm(waiting ~ eruptions, data = faithful)
summary(model)

r_squared <- summary(model)$r.squared
cat("R-squared:", round(r_squared, 4), "\n")

ggplot(faithful, aes(x = eruptions, y = waiting)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(x = "Eruptions (minutes)", y = "Waiting (minutes)", title = "Regression Analysis")


