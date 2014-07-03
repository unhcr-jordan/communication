## install sliddify

library(devtools)
install_github('slidify', 'ramnathv')
install_github('slidifyLibraries', 'ramnathv')

library(slidify)

# Creating now the folder where the presentation will be developped
author("slides")

## The slides.Rmd is a copy of the slides that will be need to overvrwrite the /slides/index.Rmd files
## Now create the slides from the mark down file
slidify("index.Rmd")