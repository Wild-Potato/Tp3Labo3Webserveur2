require "test_helper"

class RecetteTest < ActiveSupport::TestCase
    test "should not save recette without titre and etape" do
        recette = Recette.new
        assert_not recette.save, "Saved the recette without a titre and etape"
    end

    test "Should save recette and work :)" do
        paul = User.create!(nom: "Paul", prenom: "Tremblay", email: "paul@tremblay.com", password: "123456", isAdmin: 0)

        recette = Recette.new(titre: "Omelette",
        etapes: "Cassez les oeufs, mélangez le lait, faire cuire dans une poele bien huilée",
        user: paul
        )
        assert recette.save, "Saved the recette without any troubles"
    end

    test "Should not save recette without a user" do
        recette = Recette.new(titre: "Omelette",
        etapes: "Cassez les oeufs, mélangez le lait, faire cuire dans une poele bien huilée",
        
        )
        assert_not recette.save, "Saved the recette without a user"
    
    
    end

    test "Should Update recette" do 

        paul = User.create!(nom: "Paul", prenom: "Tremblay", email: "paul@tremblay.com", password: "123456", isAdmin: 0)

        recette = Recette.create!(titre: "Omelette",
        etapes: "Cassez les oeufs, mélangez le lait, faire cuire dans une poele bien huilée",
        user: paul
        )
        assert recette.update(titre: "newRecipeTitle", etapes: "newRecipeEtape"), "Can't update a recette"
        

    end

    test "Should delete recette" do 

        paul = User.create!(nom: "Paul", prenom: "Tremblay", email: "paul@tremblay.com", password: "123456", isAdmin: 0)

        recette = Recette.create!(titre: "Omelette",
        etapes: "Cassez les oeufs, mélangez le lait, faire cuire dans une poele bien huilée",
        user: paul
        )
        assert recette.delete, "Can't delete recette"

    end
    

end