## Destination path ---- 
path <- here::here("data", "wildfinder")

## Create destination directory ----
dir.create(path, showWarnings = FALSE, recursive = TRUE)

## File name ----
filename <- "wildfinder-ecoregions_list.csv"
filename <- "wildfinder-ecoregions_species.csv"  
filename <- "wildfinder-mammals_list.csv"
## GitHub base URL ----
base_url <- "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/"

## Build full URL ----
full_url <- paste0(base_url, filename)

## Build full path ----
dest_file <- file.path(path, filename)

## Download file ----
utils::download.file(url = full_url, destfile = dest_file, mode = "wb")
