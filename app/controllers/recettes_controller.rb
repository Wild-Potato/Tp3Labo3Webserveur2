#Raphael Bergeron 2021-11-05
class RecettesController < ApplicationController




    def recettes
        get_recipe_id
    end


    private


    def get_recipe_id
        @Idrecipe = Recette.find(params[:id])
    end
    
end
    