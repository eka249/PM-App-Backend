class AuthController < ApplicationController
  # before_action :user_login_params, only: [:create]
  skip_before_action :authorized, only: [:create]


  def create
    @user = User.find_by(username: user_login_params[:username])
    puts @user
    puts params[:username]
    puts @user.authenticate(user_login_params[:password])
    #User authenticate comes from BCrypt
    if @user && @user.authenticate(user_login_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
      else
      render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end

  def show
    token = request.headers['Authorization']
    user = User.find_by(id: token)
    if logged_in?
      render json: {id: current_user.id, username: current_user.username}
    else render json: {error: 'No user could be found'}, status: 401
    end
  end
  
 
  private
 
  def user_login_params
    params.require(:auth).permit(:username, :password)
  end
end