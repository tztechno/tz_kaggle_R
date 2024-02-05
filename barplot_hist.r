options(repr.plot.width = 30.0, repr.plot.height = 50.0)
par(mfrow = c(6, 3), mar = c(3, 3, 1, 1), oma = c(0, 0, 1, 0))
par(cex.lab = 2, cex.main = 2, cex.axis = 2)

for (i in seq_along(cols)) {
  r <- i %/% 2 + 1
  c <- i %% 2 + 1
  
  col_train <- rgb(1, 0.5, 0, alpha = 0.5)  
  col_test <- rgb(0, 1, 0, alpha = 0.2)   

  if (i != 18) {
    if (cols[i] %in% character_columns) {
        # Bar plot for categorical data
        table_train <- table(train[, cols[i]])
        table_test <- table(test[, cols[i]])
        barplot(table_train, main = paste("train ", cols[i]), col = col_train, xlab = '', ylab = '', col.main = 'black', col.lab = 'black')
        barplot(table_test, main = paste("test ", cols[i]), col = col_test, add = TRUE, col.main = 'black', col.lab = 'black', angle = 45)
      } else {
        # Histogram for numerical data
        hist(train[, cols[i]], main = paste("train ", cols[i]), col = col_train, xlim = c(min(train[, cols[i]]), max(test[, cols[i]])), xlab = '', ylab = '', breaks = 40, col.main = 'black', col.lab = 'black')
        hist(test[, cols[i]], main = paste("test ", cols[i]), col = col_test, add = TRUE, breaks = 40, col.main = 'black', col.lab = 'black', angle = 45)
      } }
    else {
        # Bar plot for categorical data
        table_train <- table(train[, cols[i]])
        barplot(table_train, main = paste("train ", cols[i]), col = col_train, xlab = '', ylab = '', col.main = 'black', col.lab = 'black')
     }           
  }
