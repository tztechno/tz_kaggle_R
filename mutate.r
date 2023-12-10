# create new columns

df <- df %>%
  mutate(
    new_column = existing_column * 2
  )



# add new column of no data

df[[new_column_name]] <- NA

