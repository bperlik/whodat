Whodat::Engine.routes.draw do

  get '/signup', to: 'users#new', as: :new_user
  post '/user', to: 'user#create', as: :create_user
  get '/update', to: 'user#update', as: :update_user

  root 'dashboard#index'

  get 'dashboard' => 'dashboard#index', as: :dashboard

  get '/login', to: 'sessions#new', as: :new_session
  post '/login', to: 'sessions#create', as: :sessions
  delete '/logout', to: 'sessions#destroy', as: :destroy_session

end
