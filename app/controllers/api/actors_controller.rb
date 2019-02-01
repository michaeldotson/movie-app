class Api::ActorsController < ApplicationController
  
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @actors = Actor.all.order(birth_date: :desc)

    @actors = current_user.actors
    render "index.json.jbuilder"
    end

  def show
    @actor = Actor.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      birth_date: params[:birth_date],
      movie_id: params[:movie_id]
      )

    if @actor.save
      #happy path
      render 'show.json.jbuilder'
    else
      #sad path
      render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.first_name = params[:first_name] || @actor.first_name
      @actor.last_name = params[:last_name] || @actor.last_name
      @actor.known_for = params[:known_for] || @actor.known_for
      @actor.gender = params[:gender] || @actor.gender
      @actor.birth_date = params[:birth_date] || @actor.birth_date
      @actor.movie_id = params[:movie_id] || @actor.movie_id

    if @actor.save
      #happy path
      render 'show.json.jbuilder'
    else
      #sad path
      render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @actor = Actor.find_by(id: params[:id])
    @actor.destroy
    render json: {message: "#{@actor.first_name} successfully deleted."}
  end

##########################

  
end

