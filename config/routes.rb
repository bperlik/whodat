Whodat::Engine.routes.draw do
 #  get 'users/new'
 #  get 'users/create'
 #  get 'users/destroy'

  resources :users

  root '/welcome#index'

end
