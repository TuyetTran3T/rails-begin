Rails.application.routes.draw do
  root 'welcome#index'
  
  post '/login', to: 'welcome#login'


  resources :users
  resources :ais_vessal_destinations
  resources :ais_trackings
  resources :port_vessels
  resources :vessels
  # get 'articles/new'
  # get 'welcome', to: 'welcome#index'
  # get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
