# Count NAs in each column for train data
na_count_train <- colSums(is.na(data))
print("Train Data - Number of NAs in each column:")
print(na_count_train)

# Count NAs in each column for test data
na_count_test <- colSums(is.na(test))
print("Test Data - Number of NAs in each column:")
print(na_count_test)
