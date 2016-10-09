Rails.application.routes.draw do

  root 'users#index'

  resources :users

  get '/auth/twitter/callback', to: 'sessions#create', as: 'callback'
end
