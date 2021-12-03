#Raphael Bergeron 2021-12-01
class RecettesController < ApplicationController




    def recettes
        get_recipe_id
    end


    private


    def get_recipe_id
        @theRecipe = Recette.find(params[:id])
    end
    
end
    