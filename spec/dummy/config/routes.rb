Rails.application.routes.draw do

  root :to => 'welcome#index'
  
  get 'welcome/index'

  mount Whodat::Engine => "/whodat"

end
