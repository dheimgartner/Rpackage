## code to prepare `analysis_script` dataset goes here
## load the package (as we use the useful_data)
devtools::load_all()

## very short analysis (your analysis is probably more insightful...)
fit <- lm(sepal_length ~ species, data = useful_data)

## and save some useful intermediate results
analysis_script <- list()
analysis_script$fit <- fit

## this is the magic line!
usethis::use_data(analysis_script, overwrite = TRUE)
