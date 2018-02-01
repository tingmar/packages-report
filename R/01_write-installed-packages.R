## deja vu from yesterday!

library(tidyverse)
## create a data frame of your installed packages

paks <- installed.packages()  %>%
        as_tibble()

## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

paks <- paks %>%
  dplyr::select(1:4, 16)

list.files(path="./R")
here::here("R", "01_write-installed-packages.R")

list.files(path="./data")
s_data<- here::here("data", "installed-packages.csv")   ##How to get the path of the directory, not with the file name
write_csv(paks, s_data)    ##automatic overwrite??

## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like



## when this script works, stage & commit it and the csv file
## PUSH!
