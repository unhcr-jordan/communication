## install the packages that are not yet instaled

packages <- c("ggplot2", "lattice",  "MASS", "lattice", "gvlma", "VGAM", "aod", "fields", "scatterplot3d", "cluster", 
              "ade4",  "psych", "stringr", "ellipse", "pastecs","car","stringr", "devtools","vcd","reshape","RColorBrewer")
if (length(setdiff(packages, rownames(installed.packages()))) > 0) {
  install.packages(setdiff(packages, rownames(installed.packages())))  
}

## Load all libraries

library(rMaps)
library(rCharts)
library(slidify)
library(MASS)
library(lattice)
library(ellipse) 
library(cluster)
library(scatterplot3d)
library(ade4)
library(ggplot2)
library(pastecs)
library(psych)
library(fields)
library(aod)
library(gvlma)
library(VGAM)
library(stringr)
library(car)
library(vcd)
library(reshape)
library(RColorBrewer)

## Load additional fancy libraries

library(devtools)

#install_github("rgbif", "ropensci")
#install_github('ramnathv/rCharts@dev')
#install_github('ramnathv/rMaps')
library(rMaps)
library(rCharts)

#install_github('slidify', 'ramnathv')
#install_github('slidifyLibraries', 'ramnathv')
