### Exercise 5 ###
library(jsonlite)
library(dplyr)

# Write a function that allows you to specify a movie, then does the following:

  # Replace all of the spaces in your movie title with plus signs (+)
  
  
  # Construct a search query using YOUR api key
  # The base URL is https://api.nytimes.com/svc/movies/v2/reviews/search.json?
  # See the interactive console for more detail:https://developer.nytimes.com/movie_reviews_v2.json#/Console/GET/reviews/search.json
  
  
  # Request data using your search query
  
  
  # What type of variable does this return?
  
  # Flatten the data stored in the `$results` key of the data returned to you
  
  
  # From the most recent review, store the headline, short summary, and link to full article each in their own variables
  
  
  # Return an list of the three pieces of information from above
  
myMovie <- function(movie_name){
  movie_noSpace <- gsub(" ", "+", movie_name)
  base_URL <- "https://api.nytimes.com/svc/movies/v2/reviews/search.json?"
  api_key <- "4334cc67b3d449bb9a1955e3d93cf537"
  request <- paste0(base_URL, 'query=', movie_noSpace, api_key)
  results <- fromJSON(request)
  flattened <- flatten(results$results)
  
  first.review <- flattened[1,]
  headline <- first.review$headline
  summary <- first.review$summary_short
  link <- first.review$link.url
  
  info <- list(headline=headline, summary=summary, link=link)
  return(info)
}
  
# Test that your function works with a movie of your choice
myMovie('Tarzan')
