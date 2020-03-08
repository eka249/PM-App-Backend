# class AuthController < ApplicationController
#     # skip_before_action :verify_authenticity_token, if: :json_request?
#      before_action :authorized, except: :login
#     # POST /auth/login
#     def create
#       userList = User.where('lower(username) = ?', params[:email].downcase)
#       @user
#       if userList.length > 0
#         @user = userList[0]
#       end
#       puts "authentication attemt below"
#       puts @user.authenticate(params[:password])
#       if @user&.authenticate(params[:password])
#         token = JWT.encode({user_id: @user.id},'5KgjiJMXTmi0jvOzwfsp')
#         @admin = false
#         if !!@user.admin
#           @admin = @user.admin
#         end
#         render json: { token: token, id:@user.id, admin: @admin }, status: :ok
#       else
#       # byebug
#         render json: { error: 'unauthorized' }, status: :unauthorized
#       end
#     end
#     private
#     def login_params
#       params.permit(:email, :password)
#     end
#       # protected
#       def json_request?
#           return request.format.json?
#       end
#    end
   
# #   # before_action :user_login_params, only: [:create]
# #   skip_before_action :authorized, only: [:create]


# #   def create
# #     # @user = User.find_by(email: user_login_params[:email])
# #     # puts params[:password]
# #     # puts params[:email]
# #     puts "authenticate below"
# #     # puts @user.authenticate(user_login_params[:password])
# #     #User authenticate comes from BCrypt
# #     if @user && @user.authenticate(user_login_params[:password])
# #       # encode token comes from ApplicationController
# #       token = encode_token({ user_id: @user.id })
# #       puts "token below"
# #       puts token
# #       # byebug
# #       render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
# #       else
# #       render json: { message: 'Invalid email or password' }, status: :unauthorized
# #       puts @user.errors.full_messages
# #     end
# #   end

# #   def show
# #     token = request.headers['Authorization']
# #     user = User.find_by(id: token)
# #     if logged_in?
# #       render json: {id: current_user.id, email: current_user.email}
# #     else render json: {error: 'No user could be found'}, status: 401
# #     end
# #   end
  
 
# #   private
 
# #   def user_login_params
# #     params.require(:auth).permit(:email, :password)
# #   end
# # end