class ApplicationController < ActionController::Base

    private 
      def check_admin
        if current_user.role != 'admin'
          redirect_to root_path
          return
        end
      end
  end
  