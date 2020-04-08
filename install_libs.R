#!/usr/bin/env Rscript
install.packages('devtools')
install.packages('MazamaSpatialUtils')
install.packages('PWFSLSmoke')

#install spatial Data
library('PWFSLSmoke')
dir.create("~/Data/Spatial", recursive=TRUE)
setSpatialDataDir("~/Data/Spatial")
installSpatialData()