require "imdb"

class MoviesMaker
  attr_accessor :movies
  def initialize(movie_titles)
    @movie_titles = movie_titles
    @movies = []
  end
  def make_movies
    @movie_titles.each do |movie_title|
      @movies << Imdb::Search.new(movie_title).movies[0]
    end
  end
  def printMovies
      @movies.each_with_index do |movie, i|
        puts "#{i+1}. #{movie.title}"
      end
  end
  def printGraph
    # arr = [10,9,8,7,6,5,4,3,2,1]
    # for i in arr
    (1..10).to_a.reverse.each do |i|
      @movies.each do |movie|
        if movie.rating.round >= i
          print "|#"
        else
          print "| "
        end
      end
        puts "|"
    end
    puts "--------------------"
    (1..10).to_a.each { |i| print "|#{i}"}
    puts "|\n"
  end

end
