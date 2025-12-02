remotes::install_github("frbcesab/rcompendium")
library("rcompendium")
add_description()
add_license(license = "GPL-2")
## Ajout de sous-répertoires ----
add_compendium(compendium = c("data", "analyses", "R", "figures", "outputs"))
## Ajout d'un script R ----
utils::file.edit(here::here("analyses", "download-data.R"))

# Création d'un fichier gitignore 
rcompendium::add_to_gitignore()
