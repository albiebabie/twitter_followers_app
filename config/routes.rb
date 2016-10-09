Rails.application.routes.draw do

  root 'users#index'

  resources :users

  get '/auth/twitter/callback', to: 'sessions#create'
  delete '/sign_out', to: 'sessions#destroy'
end
