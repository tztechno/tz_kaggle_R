# FIFA Ranking (ggplot2/R)

library(dplyr)
library(imager)
library(ggplot2)
library(png)

path0 <- '/kaggle/input/fifaworldranking/fifa_ranking-2022-12-22.csv'
data <- read.csv(path0)
data$rank_date <- as.Date(data$rank_date)

countries <- c('Brazil', 'Argentina', 'France', 'Spain', 'Germany', 'England')

data_filtered <- data %>%
  filter(country_full %in% countries)

library(ggplot2)

ggplot(data = data_filtered, aes(x = rank_date, y = rank, 
                        group = country_full, color = country_full)) +
  geom_line() +
  scale_color_manual(values = c(Brazil = "green", Argentina = "blue", France = "red",
                        Spain = "orange", Germany = "black", England = "purple")) +
  labs(title = "FIFA Ranking", x = "date", y = "rank") +
  theme_bw()

ggsave(file="fifa.png", width=8, height=6, dpi=300)

paths <- c("fifa.png")
par(mfrow=c(1,1), mar=c(0,0,0,0), mgp=c(0,0,0), xaxt="n", yaxt="n")
invisible(lapply(paths, function(x) plot(load.image(x))))

#file.remove(list.files(path = "/kaggle/working/"))
