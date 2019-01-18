class Api::ActorsController < ApplicationController
  def single_actor
    @actor = Actor.first
    render 'single_actor.json.jbuilder'
  end

  def all_actors
    @actors = Actor.all
    render 'all_actors.json.jbuilder'
  end
end
