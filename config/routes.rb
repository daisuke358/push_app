Rails.application.routes.draw do
  get 'sessions/new'

  root 'static#home'
  get 'static/home'
  get 'users/new'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :microposts, only:[:create, :destroy]
end
