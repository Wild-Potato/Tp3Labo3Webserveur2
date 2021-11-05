#Raphael Bergeron 2021-11-05
class HomesController < ApplicationController


    before_action :get_recipe, only: [:homes]

    def homes
        
       

    end
    
    private

    def get_recipe
        @recettes = Recette.all.order(:titre)
    end

end
    