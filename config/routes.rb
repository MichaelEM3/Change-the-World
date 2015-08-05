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
  resources :clubs do
    resources :projects
  end
  resources :stories do
    resources :commentaries
  end
  resources :user_clubs
  resources :posts
  resources :tags

  # root 'posts#index'
  get '/users/:id/profile', to: 'users#show', as: 'profile'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/session' => 'sessions#show'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/post' => 'posts#index'

  post '/clubs/:id/join', to: 'clubs#join', as: 'join_club'
  post '/clubs/:id/unjoin', to: 'clubs#unjoin', as: 'unjoin_club'

end
