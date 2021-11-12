#Raphael Bergeron 2021-11-10
class MesrecettesController < ApplicationController
    before_action :authenticate_user!



    def recettes
       @recettes = Recette.all
    end

    def marecettes
        get_recipe_id
    end


    private


    def get_recipe_id
        @theRecipe = Recette.find(params[:id])
    end
    
    
end