Rails.application.routes.draw do
  get 'travels/index'
  get 'travels/new'
  get 'travels/create'
  get 'travels/show'
  root 'static_pages#home'

  get     'login',  to: 'sessions#new'
  post    'login',  to: 'sessions#create'
  delete  'logout', to: 'sessions#destroy'  
  
  resources :users, only: [:new, :create, :show]
end