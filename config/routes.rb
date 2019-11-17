Rails.application.routes.draw do
  resources :users
  resources :user_roles
  # resources :roles
  resources :tasks
  # resources :users
  patch :tasks, to: 'tasks#update'
  post '/login', to: 'auth#create'
  # ^^creating a valid token
  get '/alltasks', to: 'tasks#index'
  post '/users', to: 'users#create'
  post '/task', to: 'task#create'
  get '/profile', to: 'users#profile'
  patch 'users', to: 'users#update'
  # patch 'tasknotes', to: 'task#update'
  #^need an id
  get '/employees/:id', to: 'roles#employees'
  get '/users/:id', to: 'users#show'
  get '/users', to: 'users#index'
  # resource :role do 
  #   get 'employees', :on => :collection
  # end
  # map.connect '/role/employees', :controller => 'roles', :action => 'employees'

end
