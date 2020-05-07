Rails.application.routes.draw do
 
  
  
  #resources :posts
  get 'posters/index'
  #get 'posts/index'
  get 'posters/new'
  post 'posters/create'
  get 'posters/show'
  get 'posters/edit/:id', to: "posters#edit"
  patch 'posters/update'
  
  delete "posters/:id", to: "posters#delete"

  root 'posters#landing'

  resources :posters do 
    resources :posts
  end 
 
  #resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
