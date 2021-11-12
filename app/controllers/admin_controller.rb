#Raphael Bergeron 2021-11-05
class AdminController < ApplicationController
  layout "application"
    before_action :authenticate_user!

    before_action :is_admin?
    
   
   

    def index
      get_nom_user
      get_all_recipe_group_by
    end

    def show
      get_recipe_id
      
        
    end

    private

   
    def get_nom_user
      @user = User.all
    end
    def get_all_recipe_group_by
      @recette = Recette.all.group_by(&:user)
    end
    def get_recipe_id
      @theRecipe = Recette.find(params[:id])
    end

    
   
    def is_admin?
      unless current_user.isAdmin?
          redirect_to "/"
      end
    end
  
  end
  