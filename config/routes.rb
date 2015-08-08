Rails.application.routes.draw do
  get 'tasks/new'

  get 'tasks/index'

  get 'tasks/edit'

  get 'tasks/view'

  get 'tasks/show'

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
  resources :projects do
    resources :tasks
  end
  resources :user_clubs

  get '/users/:id/profile', to: 'users#show', as: 'profile'

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
  post '/projects/:project_id/tasks/:id/join', to: 'projects#join', as: 'join_task'
  post '/projects/:project_id/tasks/:id/unjoin', to: 'projects#unjoin', as: 'unjoin_task'

end
