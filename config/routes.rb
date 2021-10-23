Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#index'

  resources :users
  resources :super_users
  resources :super_users do 
    resources :posts, only: [:new]
  end 
  resources :posts, except: [:new]
    
end
