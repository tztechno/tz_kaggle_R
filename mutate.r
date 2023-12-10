# create new columns

result_df <- original_df %>%
  mutate(
    new_column = existing_column * 2
  )
