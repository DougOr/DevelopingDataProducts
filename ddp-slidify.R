# Install devtools package
install.packages("devtools")
library(devtools)

# Install Slidify
install_github('ramnathv/slidify')
install_github('ramnathv/slidifyLibraries')

# Load Slidify
library(slidify)

# Set the Working Directory
setwd("~/ddp-slidify/")
getwd()

# Create the Slidify Deck
author("first_deck")

# Create the Slidify Rmd
#slidify("index.Rmd")
#slidify('index.Rmd', options = list(copy_libraries = TRUE, theme = "io2012"))
slidify("index.Rmd", options=list(framework="io2012", copy_libraries=TRUE))

# Browse to the HTML
browseURL("index.html")

#Publish to RPubs
# Set the Working Directory
setwd("~/ddp-slidify/first_deck/")
getwd()
publish(title = 'Analyzing Titanic Dataset', 'index.html', host = 'rpubs')