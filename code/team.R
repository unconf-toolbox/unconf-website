# run source("code/team.R") to generate the config text for the participants 
pdat <- readr::read_csv("dat/team-data.csv") 

team_template <- '
    [[params.team.members]]
      name = "{name}"
      position = "{position}"
      img = "{img}"
      twitter = "{twitter}"
      github = "{github}"
      url = "{url}"
  
'

toml_teammembers <- glue::glue_data(pdat, team_template, .na = "")
# copy-paste results for the team members 
toml_teammembers 
