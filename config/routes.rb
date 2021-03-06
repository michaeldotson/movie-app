Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
  get "actors" => "actors#index"
  get "actors/:id" => "actors#show"
  post "actors" => "actors#create"
  patch "actors/:id" => "actors#update"
  delete "actors/:id" => "actors#destroy"

  get "movies" => "movies#index"
  get "movies/:id" => "movies#show"
  post "movies" => "movies#create"
  patch "movies/:id" => "movies#update"
  delete "movies/:id" => "movies#destroy"

  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  get "/users" => "users#update"
  get "/users" => "users#destroy"


  post "/sessions" => "sessions#create"

  post "/movie_genres" => "movie_genres#create"

  end
end
