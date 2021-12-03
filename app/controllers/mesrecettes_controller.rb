#Raphael Bergeron 2021-12-01
class MesrecettesController < ApplicationController
    before_action :authenticate_user!



    def recettes
       @recettes = Recette.all
       
    end

    def marecettes
        @theRecipe = Recette.find(params[:id])
        if(@theRecipe.user != current_user)
            redirect_to "/mesrecettes"
        end
        
       
    end


    
    
end