#Raphael Bergeron 2021-12-01
class AdminAuthentificationController < ApplicationController
   
    before_action :authenticate_user!

    before_action :is_admin?

    def is_admin?
        unless current_user.isAdmin?
            redirect_to "/"
        end
      end
end