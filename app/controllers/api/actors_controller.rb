class Api::ActorsController < ApplicationController
  def single_actor
    @actor = Actor.id
    render 'single_actor.json.jbuilder'
  end
end
