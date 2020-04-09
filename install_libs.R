#!/usr/bin/env Rscript
install.packages('devtools')
install.packages('MazamaSpatialUtils')
devtools::install_github('MazamaScience/PWFSLSmoke', build_vignettes=FALSE)

#install spatial Data
library('PWFSLSmoke')
dir.create("~/Data/Spatial", recursive=TRUE)
setSpatialDataDir("~/Data/Spatial")
installSpatialData()