#install.packages("leaflet")
library(leaflet)
library(shiny)
library(httr)
library(jsonlite)
library(maps)
library(ggplot2)
#install.packages("geojsonio")
library(geojsonio)
library("zipcode")

source("accessToken.R")
#source("~/Desktop/UW/Quarter 2/INFO 201/Assignments/a6-data-visualization-ask710/Practice2.R")
access.code
input <- "Seattle"
query <- list(location = input)
response <-GET ("https://api.yelp.com/v3/businesses/search?term=food&limit=50", query = query, add_headers(Authorization = access.code))
response
body <- fromJSON(content(response, "text"))
data <- body$businesses

query.second <- list(offset = 50)
response.second <- GET("https://api.yelp.com/v3/businesses/search?term=food&location=98105&limit=50", query = query.second, add_headers(Authorization = access.code))
body.second <- fromJSON(content(response.second, "text"))    
data.second <- body.second$businesses

coordinates <- data$coordinates
coordinates$longitude
categories <- data$categories
View(categories)
View(body$businesses)
typeof(data)




