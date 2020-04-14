Rails.application.routes.draw do
  root 'static_pages#home'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]  
      
end
