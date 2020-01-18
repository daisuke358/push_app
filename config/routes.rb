Rails.application.routes.draw do
  root 'static#home'
  get 'static/home'
  get 'users/new'
end
