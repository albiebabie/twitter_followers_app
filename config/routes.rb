Rails.application.routes.draw do

  root 'users#index'

  resources :users do
    resources :followers
  end

  get '/auth/twitter/callback', to: 'sessions#create'
  delete '/sign_out', to: 'sessions#destroy'
end
