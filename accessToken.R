library("httr")
library("jsonlite")
search.query <- list(grant_type = "client_credentials", client_id = "oUBxMAlVRNvt92rrkhyqCw", 
                     client_secret = 
                       "r084ZHHwidD5SvbKQrbTEvuOVsLn8koFiZTuVqN0nI6j0wBsgdQdPdqO7vddfBz6")
response <- POST("https://api.yelp.com/oauth2/token", query = search.query)
response
body <- fromJSON(content(response, "text"))
access_token <- body$access_token 
access.token <- access_token

