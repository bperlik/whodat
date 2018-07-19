Whodat::Engine.routes.draw do
  root 'dashboard#index'

  get 'dashboard' => 'dashboard#index', as: :dashboard

  resources :users, except: :show

  get '/login', to: 'sessions#new', as: :new_session
  post '/login', to: 'sessions#create', as: :sessions
  delete '/logout', to: 'sessions#destroy', as: :destroy_session

end
