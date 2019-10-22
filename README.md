Ruby Version ruby 2.6.5p114
Rails Version Rails 6.0.0

# API Movies

## Index

GET localhost:3000/movies

## Create

POST localhost:3000/movies?movie[name]=&movie[description]=some description&movie[url]=some&movie[days_presentation]=10

## UPDATE

PATCH localhost:3000/movies/1?movie[name]=&movie[description]=some description&movie[url]=some&movie[days_presentation]=10

## SHOW

GET localhost:3000/movies/1

# API Reservations

## Index

GET  localhost:3000/movies/1/reservations

## Create

POST localhost:3001/movies/1/reservations?reservation[email]=darenas@softdreams.co&reservation[name]=Daniel Arenas&reservation[identification]=1144151411&reservation[reservation_date]=01/01/2019

## Update

PATH localhost:3001/movies/1/reservations/1?reservation[email]=darenas@softdreamsmo.co&reservation[name]=Daniel Arenas&reservation[identification]=1144151411&reservation[reservation_date]=01/01/2019

## SHOW

GET 

