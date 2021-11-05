#Raphael Bergeron 2021-11-05
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'homes#homes'
  get '/recettes/:id', to: 'recettes#recettes'

  
  get '/admin/recettes', to: 'admin#index'
  get '/admin/recettes/:id', to: 'admin#show'
  

end 
