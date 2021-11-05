#Raphael Bergeron 2021-11-05
class RecettesController < ApplicationController

    before_action :get_recipe, only: [:recettes]
    before_action :get_recipe_id, only: [:recettes]
    before_action :get_ingredient, only: [:recettes]
    before_action :get_nom_ingredient, only: [:recettes]


    def recettes

    end

    def show
        
        
    end

    private

    def get_recipe
        @recettes = Recette.all
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

    
end
    