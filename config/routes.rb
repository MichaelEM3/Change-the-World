Rails.application.routes.draw do
  root 'home#index'

  resources :activities
  get 'activities/index'

  resources :stories
  get 'tags/show'

  resource :sessions
  resources :users
  resources :clubs do
    resources :stories
  end
  resources :stories do
    resources :commentaries
  end
  resources :user_clubs
  resources :tags

  get '/users/:id/profile', to: 'users#show', as: 'profile'
# 
  get '/users/:owner_id/owner_profile', to: 'users#show', as: 'owner_profile'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/session' => 'sessions#show'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  post '/clubs/:id/join', to: 'clubs#join', as: 'join_club'
  post '/clubs/:id/unjoin', to: 'clubs#unjoin', as: 'unjoin_club'

end
