class RolesController < ApplicationController

  #we'll see how to do this
  # before_action :set_role, only: [:show, :update, :destroy]

  
  # GET /roles
  def index
    @roles = Role.all

    render json: @roles
  end

  def employees
    @users = User.all
    @user = User.find(params[:id])

    @users= @users.select{|employee| (employee.role == "emp" && employee.unit == @user.unit)}
      render json: @users
    end

  # GET /roles/1
  def show
    puts "hit show in roles c"
    render json: @role
  end

  # POST /roles
  def create
    @role = Role.new(role_params)

    if @role.save
      render json: @role, status: :created, location: @role
    else
      render json: @role.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /roles/1
  def update
    if @role.update(role_params)
      render json: @role
    else
      render json: @role.errors, status: :unprocessable_entity
    end
  end

  # DELETE /roles/1
  def destroy
    @role.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role
      @role = Role.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def role_params
      params.require(:role).permit(:role, :adminYN)
    end
end
