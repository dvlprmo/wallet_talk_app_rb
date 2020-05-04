Rails.application.routes.draw do
 
  get 'posters/index'
  get 'posters/new'
  get 'posters/show'
  get 'posters/create'
  get 'posters/edit'
  patch 'posters/update'

  delete "posters/:id", to: "posters#delete"
  

  root 'posters#landing'
 
  resource :posters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
