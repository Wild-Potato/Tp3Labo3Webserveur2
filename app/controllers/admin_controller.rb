#Raphael Bergeron 2021-12-01
class AdminController < AdminAuthentificationController
  layout "adminApplication"
    
    
    def index
      get_nom_user
      get_all_recipe_group_by
    end

    def show
      get_recipe_id
      
        
    end

    def recipeadd
      
    end

    def recipeaddto
      #get les params
      newRecipeTitle = (params[:title])
      newRecipeEtape = (params[:etapes])

      theCurrentUser = current_user.id
      #stocker les params (titre, etapes) dans 2 variables
      Recette.create!(titre: newRecipeTitle,
                          etapes: newRecipeEtape,
                          user_id: theCurrentUser)
      #Recette.new(titre:variableTitre,etapes:variableEtape,user_id:current_user.id)
      redirect_to "/admin/recettes"
    end

    def recipeedit
      get_recipe_id
    end

    def recipeeditto
      get_recipe_id
      newRecipeTitle = (params[:recette])[:titre]
      newRecipeEtape = (params[:recette])[:etapes]

      puts (params[:recette])[:titre]
      #theCurrentUser = current_user.id
      puts "title : "+newRecipeTitle.to_s
      puts "etapes : " + newRecipeEtape.to_s


      #a = Recette.where(:)
      #stocker les params (titre, etapes) dans 2 variables
      @theRecipe.update(titre: newRecipeTitle, etapes: newRecipeEtape)
      redirect_to "/admin/recettes/"+@theRecipe.id.to_s
    end

    private

   
    def get_nom_user
      @user = User.all
    end
    def get_all_recipe_group_by
      @recetteByUser = Recette.all.group_by(&:user)
    end
    def get_recipe_id
      @theRecipe = Recette.find(params[:id])
    end

    
  
  end
  