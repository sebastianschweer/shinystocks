###
### Script to install and load required libraries
###

list.of.packages <- readLines(con = "requirements.txt", warn = FALSE)


# Libraries already installed?
new.packages <- 
  list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]

# Install if needed
if(length(new.packages))
  install.packages(new.packages, 
                   repos="http://cran.uni-muenster.de/",
                   dependencies = c("Depends", "Imports", "LinkingTo"))

lapply(list.of.packages, require, character.only = TRUE)

