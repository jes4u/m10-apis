### Exercise 2 ###

# As you noticed, it often takes multiple queries to retrieve the desired information.
# This is a perfect situation in which writing a function will allow you to better structure your
# code, and give a name to a repeated task.

library(jsonlite)
setwd("C:/Users/Jesse/Desktop/AUT16/INFO 201/Modules/m10-apis/exercise-2")


# Write a function that allows you to specify an artist, and returns the top 10 tracks of that artist

base <- 'https://api.spotify.com/v1/search?'

artist <- 'Drake'

artisr





top10 <- function(artist){
  base <- 'https://api.spotify.com/v1/search?'
  search <- paste0("'q=", artist, "'") 
  type <- '&type=artist'
  query.url <- paste0(base, search, type)
  data <- fromJSON(query.url)
  artist.id <- data.info$artists$items$id[1]
  tracks.query <-
  return(data)
}

# What are the top 10 tracks by Nelly?
top10("Nelly")



### Bonus ### 
# Write a function that allows you to specify a search type (artist, album, etc.), and a string, 
# that returns the album/artist/etc. page of interest


# Search albums with the word "Sermon"

