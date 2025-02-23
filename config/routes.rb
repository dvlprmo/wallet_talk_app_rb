Rails.application.routes.draw do
 
  
  
  get 'denial/index'
  devise_for :users
  get 'posters/policy'
  get 'posters/about'
  #resources :posts
  get 'posters/index'
  #get 'posts/index'
  get 'posters/new'

  post 'posters/create'
  #get 'posters/show'
  get 'posters/edit/:id', to: "posters#edit"
  patch 'posters/update'
  
  delete "posters/:id", to: "posters#delete"
  #delete "posts/:id", to: "post#delete"

  root 'posters#landing'

  resources :posters do 
    resources :posts
  end 

  resources :posts do
    resources :notes
  end
  resources :notes
  resources :posts
  
end
