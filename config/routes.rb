Rails.application.routes.draw do
  root 'static_pages#home'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users, only: %i[new create show]
  resources :travels, only: %i[index new create show]
  resources :groups, only: %i[index new create show edit update destroy]
end
