## install sliddify
install.packages("devtools")
library(devtools)
install_github('slidify', 'ramnathv')
install_github('slidifyLibraries', 'ramnathv')

install_github("rgbif", "ropensci", ref="newapi")
install_github('ramnathv/rCharts@dev')
install_github('ramnathv/rMaps')

library(rMaps)
library(rCharts)
library(slidify)


packages <- c("ggplot2", "lattice",  "MASS", "lattice", "gvlma", "VGAM", "aod", "fields", "scatterplot3d", "cluster", 
              "ade4",  "psych", "stringr", "ellipse", "pastecs","car","stringr")
if (length(setdiff(packages, rownames(installed.packages()))) > 0) {
  install.packages(setdiff(packages, rownames(installed.packages())))  
}
