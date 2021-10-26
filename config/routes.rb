Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'posts#index'

  resources :users
  resources :super_users
  resources :posts
  resources :sessions
  get "logout", to: "sessions#destroy", as: "logout"
    
end
