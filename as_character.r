
#### 属性変更
covid_data_train[["Country_Region"]] <- as.character(covid_data_train[["Country_Region"]] )

covid_data_train[["Date"]] <- as.Date(covid_data_train[["Date"]], format = "%Y-%m-%d")


#### ifelse構文、np.whereに似ている
covid_data_train[["Province_State"]] <- ifelse(covid_data_train[["Province_State"]] == "", covid_data_train[["Country_Region"]], covid_data_train[["Province_State"]])

#### 列ごとのna
colSums(is.na(covid_data_train)) 

#### df全体でのna
sum(is.na(covid_data_train))
