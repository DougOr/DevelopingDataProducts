# Install devtools package
install.packages("devtools")
library(devtools)

# Install Slidify
install_github('slidify', 'ramnathv')
install_github('slidifyLibraries','ramnathv')

# Load Slidify
library(slidify)

# Set the Working Directory
setwd("~/ddp-slidify/")

# Create the Slidify Deck
author("first_deck")

# Create the Slidify Rmd
slidify("index.Rmd")

# Browse to the HTML
browseURL("index.html")

# Publish to GitHub
#publish_github(repo, username='github.DougOr')
#publish_github(username='github.DougOr', repo="DevelopingDataProducts2")
publish_github(user="DougOr",repo="DevelopingDataProducts")

#Publish to RPubs
#publish(title = 'Analyzing Titanic Dataset', 'index.html', host = 'rpubs')