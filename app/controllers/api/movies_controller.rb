class Api::MoviesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  
  def index
    @movies = Movie.all
    render 'index.json.jbuilder'
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      director: params[:director],
      year: params[:year],
      plot: params[:plot],
      english: params[:english],
      genre: params[:genre]
      )

    if @movie.save
      #happy path
      render 'show.json.jbuilder'
    else
      #sad path
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.director = params[:director] || @movie.director
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.english = params[:english] || @movie.english
    @movie.genre = params[:genre] || @movie.genre

    if @movie.save
      #happy path
      render 'show.json.jbuilder'
    else
      #sad path
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render json: {message: "#{@movie.title} successfully deleted."}
  end
end
