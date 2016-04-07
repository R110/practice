require "imdb"
require_relative "MovieMaker.rb"

movienames = ["The Godfather", "Die Hard", "Home Alone", "Looper", "The Sandlot", "Twister"]

the_movies = MoviesMaker.new(movienames)
the_movies.make_movies
the_movies.printGraph
the_movies.printMovies
