# functions to create yaml files

create_yaml_Publication <- function(){

  library(readr)
  library(dplyr)
  library(yaml)
  library(df2yaml)
  #read Publications csv in
  import_publication <- read_csv("data/Publications.csv") |> 
    mutate(title = paste0("- title"))
  
  #write_yaml(import_publication, "Portfolio/Publications.yaml")
    
  df2yaml(import_publication,
          key_col = "title",
          val_col = c("categories",
                      "date",
                      "path"),
          out_yaml = "Portfolio/Publications.yaml")



}

create_yaml_Publication()
