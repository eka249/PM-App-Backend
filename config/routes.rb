Rails.application.routes.draw do
  devise_for :users
  post 'user_token' => 'user_token#create'
  post 'new' => 'user#create'
  resources :users
  resources :user_roles
  resources :tasks
  resources :roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
