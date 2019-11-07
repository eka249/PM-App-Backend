module Api
    class ImpersonatesController < ApiController
      before_action :authenticate_admin, only: [:show]
      before_action :auth_token, only: [:show]
  
      def show
        json_response({ impersonate_jwt: @auth })
      end
  
      private
  
      def user
        User.find_by(id: params[:id])
      end
  
      def auth_token
        @auth = Knock::AuthToken.new(payload: payload_attrs).token
      end
  
      def payload_attrs
        {
          sub: current_admin.id,
          class_name: current_admin.class.name,
          user: {
            sub: user.id,
            class_name: user.class.name
          },
          purpose: 'impersonation'
        }
      end
    end
  end