## code to prepare `useful_data` dataset goes here
## e.g., fetch data from the qualtrics server
useful_data <- iris

## clean it
useful_data <- useful_data %>%
  rename(species = Species, sepal_length = Sepal.Length, sepal_width = Sepal.Width,
         petal_length = Petal.Width, petal_width = Petal.Length)  # classic mistake ;)

## this is the magic line!
usethis::use_data(useful_data, overwrite = TRUE)
