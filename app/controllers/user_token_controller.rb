class UserTokenController < Knock::AuthTokenController
#documented here: https://dev.to/amckean12/user-authentication-for-a-rails-api-and-a-react-client-part-1-server-side-3fej
# skip_before_action :verify_authenticity_token #is needed for rails 5.2
skip_before_action :verify_authenticity_token
end
