# Function to convert columns to numeric with handling non-numeric values
convert_to_numeric <- function(df, cols) {
  for (col in cols) {
    df[[col]] <- as.numeric(as.character(df[[col]]))
    # Replace non-numeric values with NA
    df[[col]][!is.na(df[[col]]) & !is.finite(df[[col]])] <- NA
  }
  return(df)
}
