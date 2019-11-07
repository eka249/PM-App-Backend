module Api
    class UsersController < ApiController
      def create
        @user = User.create!(user_params)
        json_response(@user, :created)
      end
  
      private
  
      def user_params
        params.require(:user).permit(:email, :manager, :first_name :last_name, :unit, :password)
      end
    end
  end