class Api::ActorsController < ApplicationController
#   def single_actor
#     @actor = Actor.first
#     render 'single_actor.json.jbuilder'
#   end

#   def all_actors
#     @actors = Actor.all
#     render 'all_actors.json.jbuilder'
#   end
# end


###########
def single_actor_query
    @actor = params["actor"]
    render 'single_actor.json.jbuilder'
  end

  def single_actor_segment
    @actor = params["wildcard"]
    render 'single_actor.json.jbuilder'
  end

  def single_actor_body
    @actor = params[:actor]
    @message = "The award goes to #{@actor}"
    render 'single_actor.json.jbuilder'
  end
end