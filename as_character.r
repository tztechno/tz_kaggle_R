

covid_data_train[["Country_Region"]] <- as.character(covid_data_train[["Country_Region"]] )

covid_data_train[["Date"]] <- as.Date(covid_data_train[["Date"]], format = "%Y-%m-%d")

