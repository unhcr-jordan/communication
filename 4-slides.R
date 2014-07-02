## install sliddify

library(devtools)
install_github('slidify', 'ramnathv')
install_github('slidifyLibraries', 'ramnathv')

library(slidify)
author("presentation")

## Now create the slides
slidify("index.Rmd")