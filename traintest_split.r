set.seed(42) 
data <- data[sample(nrow(data)), ]

split_index <- round(0.8 * nrow(data))
train_data <- data[1:split_index, ]
test_data <- data[(split_index + 1):nrow(data), ]

trainX <- select(train_data, -label) 
trainY <- train_data$label  

testX <- select(test_data, -label) 
testY <- test_data$label  
