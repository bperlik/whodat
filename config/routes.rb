Whodat::Engine.routes.draw do

  resources :users, only: [:new, :create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]

  root 'dashboard#index'

  get 'dashboard/index' => 'dashboard#index', as: :dashboard

end
