Rails.application.routes.draw do
  resources :user_tasks
  # resources :tasks
  post 'admin_token' => 'admin_token#create'
  devise_for :admins
  post 'user_token' => 'user_token#create'
  # devise_for :tasks
  # get 'tasks' => 'tasks#index'

  devise_for :users
  namespace :api, defaults: { format: :json } do
    # resources :users, only: %i[create index]
    resources :tasks
    resources :impersonates, only: %i[show]
    post 'user_token' => 'user_token#create'
  end
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
