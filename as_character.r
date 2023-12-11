

covid_data_train[["Country_Region"]] <- as.character(covid_data_train[["Country_Region"]] )

covid_data_train[["Date"]] <- as.Date(covid_data_train[["Date"]], format = "%Y-%m-%d")


#### ifelse構文、np.whereに似ている
covid_data_train[["Province_State"]] <- ifelse(covid_data_train[["Province_State"]] == "", covid_data_train[["Country_Region"]], covid_data_train[["Province_State"]])



