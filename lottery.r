# Load libraries
library(ggplot2)


# Load data
data <- read.csv('/kaggle/input/lottery-powerball-winning-numbers/Lottery_Powerball_Winning_Numbers__Beginning_2010.csv')
head(data)


    A data.frame: 6 × 3
    	Draw.Date	Winning.Numbers	Multiplier
    	<chr>	<chr>	<int>
    1	09/26/2020	11 21 27 36 62 24	3


str(data$`Draw.Date`)
unique_dates <- unique(data$`Draw.Date`)
head(unique_dates)


     chr [1:1429] "09/26/2020" "09/30/2020" "10/03/2020" "10/07/2020" ...
    1. '09/26/2020''09/30/2020''10/03/2020''10/07/2020''10/10/2020''10/14/2020'


colnames(data)
head(data$'Winning.Numbers')


  1. 'Draw.Date''Winning.Numbers''Multiplier'
  1. '11 21 27 36 62 24''14 18 36 49 67 18''18 31 36 43 47 20''06 24 30 53 56 19''05 18 23 40 50 18''21 37 52 53 58 05'


digits <- unlist(strsplit(as.character(data$`Winning.Numbers`), ' '))
head(digits)
digit_counts <- table(digits)
print(digit_counts)


