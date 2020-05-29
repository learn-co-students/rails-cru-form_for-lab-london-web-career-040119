Rails.application.routes.draw do
  root 'genres#index'
  resources :artists
  resources :songs
  resources :genres
end
