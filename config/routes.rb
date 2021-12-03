#Raphael Bergeron 2021-11-05
Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'homes#homes'
  get '/recettes/:id', to: 'recettes#recettes'

  get '/mesrecettes', to: 'mesrecettes#recettes'
  get '/mesrecettes/:id', to: 'mesrecettes#marecettes'
  
  get '/admin/recettes', to: 'admin#index'
  get '/admin/recettes/:id', to: 'admin#show'
  get '/admin/ajout', to: 'admin#recipeadd'

  post '/admin/ajout', to: 'admin#recipeaddto'

  get '/admin/edit/:id', to: 'admin#recipeedit'

  patch '/admin/edit/:id', to: 'admin#recipeeditto'
  

end 
