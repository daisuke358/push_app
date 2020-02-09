Rails.application.routes.draw do
  root 'static#home'
  get 'static/home'
  get 'users/new'
  get '/signup', to: 'users#new'
  resources :users
end
