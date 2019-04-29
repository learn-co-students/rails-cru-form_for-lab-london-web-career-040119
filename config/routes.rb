Rails.application.routes.draw do
  resources :songs, only: %i[new create show index edit update]
  resources :genres, only: %i[new create show edit update]
  resources :artists, only: %i[new create show edit update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
