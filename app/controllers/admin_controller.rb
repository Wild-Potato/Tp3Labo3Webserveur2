#Raphael Bergeron 2021-11-05
class AdminController < ApplicationController
    #before_action :is_admin?
    before_action :get_recipe
    before_action :get_nom_user
    before_action :get_recipe_id, only: [:show]
    before_action :get_ingredient, only: [:show]
    before_action :get_nom_ingredient, only: [:show]
    def index

    end

    def show
        
        
    end

    private

    
    def get_recipe
      @recettes = Recette.all.order(:user_id)
    end
    def get_nom_user
      @user = User.all
    end
    def get_recipe_id
      @Idrecipe = Recette.find(params[:id])
    end

    def get_ingredient
        @recettesIngredient = RecetteIngredient.where(recette_id: params[:id])
    end
    def get_nom_ingredient
        @nom_ingredient = @Idrecipe.ingredients
    end
    # Prendre note que 1 seul render peut être généré par requête
    def is_admin?
      unless params[:is_admin] && params[:is_admin] == "oui"
        render html: "NOT AUTORIZED"
      end
    end
  
  end
  