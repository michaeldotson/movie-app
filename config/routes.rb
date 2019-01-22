Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
  get "actors" => "actors#index"
  get "actors/:id" => "actors#show"
  post "actors" => "actors#create"
  patch "actors/:id" => "actors#update"
  delete "actors/:id" => "actors#destroy"

  get "movies" => "movies#index_movie"
  get "movies/:id" => "movies#show_movie"
  post "movies" => "movies#create_movie"
  patch "movies/:id" => "movies#update_movie"
  delete "movies/:id" => "movies#destroy_movie"

  end
end
