# run source("code/sponsors.R") to create the toml for the sponsors 

sdat <- readr::read_csv("dat/sponsor-data.csv")

sponsor_template <- '
      [[params.sponsors]]  
        logo = "{logo}" 
        link = "{url}"

'

toml_sponsors <- glue::glue_data(.x = sdat, sponsor_template, .na = "")
# copy-paste results for the sponsors
toml_sponsors