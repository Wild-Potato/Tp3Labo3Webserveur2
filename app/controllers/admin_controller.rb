#Raphael Bergeron 2021-11-05
class AdminController < ApplicationController
    #before_action :is_admin?

   
   

    def index
      get_nom_user
    end

    def show
      get_recipe_id
        
    end

    private

   
    def get_nom_user
      @user = User.all
    end
    def get_recipe_id
      @Idrecipe = Recette.find(params[:id])
    end

    
    # Prendre note que 1 seul render peut être généré par requête
    def is_admin?
      unless params[:is_admin] && params[:is_admin] == "oui"
        render html: "NOT AUTORIZED"
      end
    end
  
  end
  