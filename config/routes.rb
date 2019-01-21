Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
  get "/single_actor_query" => "actors#single_actor_query"
  get "/single_actor_segment/:actor" => "actors#single_actor_segment"
  post "/single_actor_body" => "actors#single_actor_body"

  get "all_actors" => "actors#all_actors"
  get "single_movie" => "movies#single_movie"
  get "all_movies" => "movies#all_movies"
  end
end
