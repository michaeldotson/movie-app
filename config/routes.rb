Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
  get "actors" => "actors#index"
  get "actors/:id" => "actors#show"
  post "actors" => "actors#create"
  patch "actors/:id" => "actors#update"
  delete "actors/:id" => "actors#destroy"

  get "movies" => "actors#index_movie"
  get "movies/:id" => "actors#show_movie"
  post "movies" => "actors#create_movie"
  patch "movies/:id" => "actors#update_movie"
  delete "movies/:id" => "actors#destroy_movie"

  end
end
