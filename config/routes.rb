Whodat::Engine.routes.draw do

  root to: 'whodat#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  get '/users' => 'users#create'

end
