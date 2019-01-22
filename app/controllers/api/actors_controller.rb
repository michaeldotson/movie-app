class Api::ActorsController < ApplicationController
  class Api::ActorsController < ApplicationController

  # def index
  #   @actors = Actor.all
  #   render 'index.json.jbuilder'
  # end

  # def show
  #   @actor = Actor.find_by(id: params["id"])
  #   render 'show.json.jbuilder'
  # end

  # def create
  #   @actor = Actor.new(
  #     first_name: params["first_name"],
  #     last_name: params["last_name"],
  #     known_for: params["known_for"]
  #     )

  #     @actor.save
  #     render 'show.json.jbuilder'
  # end

  # def update
  #   @actor = Actor.find_by(id: params["id"])
  #   @actor.first_name = params["first_name"] || @actor.first_name
  #     @actor.last_name = params["last_name"] || @actor.last_name
  #     @actor.known_for = params["known_for"] || @actor.known_for

  #     @actor.save
  #   render 'show.json.jbuilder'
  # end

  # def destroy
  #   @actor = Actor.find_by(id: params["id"])
  #   @actor.destroy
  #   render json: {message: "#{@actor.first_name} successfully deleted."}
  # end

  def index_movie
    @movies = Movie.all
    render 'index_movie.json.jbuilder'
  end

  def show_movie
    @movie = Movie.find_by(id: params["id"])
    render 'show_movie.json.jbuilder'
  end

  def create_movie
    @movie = Movie.new(
      title: params["title"],
      year: params["year"],
      plot: params["plot"]
      )

      @movie.save
      render 'show_movie.json.jbuilder'
  end

  def update_movie
    @movie = Movie.find_by(id: params["id"])
    @movie.title = params["title"] || @movie.title
    @movie.year = params["year"] || @movie.year
    @movie.plot = params["plot"] || @movie.plot

      @movie.save
    render 'show_movie.json.jbuilder'
  end

  def destroy_movie
    @movie = Movie.find_by(id: params["id"])
    @movie.destroy
    render json: {message: "#{@movie.title} successfully deleted."}
  end
end
end
