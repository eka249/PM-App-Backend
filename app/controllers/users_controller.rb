class UsersController < ApplicationController
  before_action :user_params, only: [:create]
  skip_before_action :authorized, only: [:create], raise: false
 

  def index
      users = User.all
      render json: users
  end

  def show
      @user= User.find(params[:id])
      render json: @user
  end

  def profile
      
      render json: {user: UserSerializer.new(current_user)}, status: :accepted
  end

 
  # def show
  #     render json: {user: UserSerializer.new(current_user)}, status: :accepted
  # end


# def create
#    user = User.new(user_params)
#    if user.save
#      render json: user
#     #  , status: :created, location: user
#    else
#      render json: user.errors, status: :unprocessable_entity
#    end
#  end
  def create
      puts "reached create on backend"
      puts "password"
      puts params[:password]
      # byebug
      # @user = User.create(user_params)
      @user = User.create(params[user_params])
      # byebug
      if @user.valid?
          @token = encode_token({user_id: @user.id})
          render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      else
          render json: {error: "failed to create user #{params[:email]}"}, status: :not_acceptable
          # puts "passed @user.valid? and failed in users controller"
      end
  end

  def update
      @user = User.find(params[:id])
      @user.update(params[:user_params])
      @user.save
      render json: @user
  end

  def delete
      @user = User.find(params[:id])
      @user.destroy()  end




  private

  def user_params

      params.require(:user).permit(:email, :first_name, :last_name, :role, :password, :unit)
  end
end

