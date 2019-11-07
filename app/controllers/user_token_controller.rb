class UserTokenController < Knock::AuthTokenController
    # before_action :auth_token, only: [:show]

    
    
    def show
      json_response({ jwt: @auth })
    end

    private

    def user
      User.find_by(email: params[:email])
    end

    def auth_token
      @auth = Knock::AuthToken.new(payload: payload_attrs).token
    end

    def payload_attrs
      {
        sub: current_user.id,
        class_name: current_user.class.name,
        user: {
          sub: user.id,
          class_name: user.class.name
        }
      }
    end
end
