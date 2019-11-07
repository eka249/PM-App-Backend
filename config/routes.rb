Rails.application.routes.draw do
  resources :users
  resources :user_roles
  resources :roles
  resources :tasks
  post '/login', to: 'auth#create'
  # ^^creating a valid token
  get '/current_user', to: 'auth#show'
  get '/alltasks', to: 'tasks#index'
  post '/users', to: 'users#create'
  post '/task', to: 'task#create'
  get '/profile', to: 'users#profile'
  patch 'users', to: 'users#update'
  patch 'tasknotes', to: 'task#update'
end
