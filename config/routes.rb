Whodat::Engine.routes.draw do

  get 'users/index'
  get 'users/new'
  get 'users/create'
  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  root to: 'dashboard#index'             
  #root 'dashboard#index'

  get 'dashboard/index' => 'dashboard#index', as: :dashboard

end
