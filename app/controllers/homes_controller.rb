#Raphael Bergeron
class HomesController < ApplicationController


    def homes
        get_recipe
       

    end
    
    private

    def get_recipe
        @recettes = Recette.all.order(:titre)
    end

end
    