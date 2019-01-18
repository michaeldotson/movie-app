class Api::MoviesController < ApplicationController
  def single_movie
    @movie = Movie.first
    render 'single_movie.json.jbuilder'    
  end

  def all_movies
    @movies = Movie.all
    render 'all_movies.json.jbuilder'
    
  end
end
