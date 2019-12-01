class TasksController < ApplicationController
  # before_action :set_task, only: [:show, :update, :destroy]

  # GET /tasks
  def index
    @tasks = Task.all
    render json: @tasks
  end

  # GET /tasks/1
  def show
    @task = set_task
    render json: @task
  end

  # POST /tasks
  def create
    puts "hit add new task"
    @task = Task.new(task_params)

    if @task.save
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    @task = Task.find(params[:id])
    puts"hit update task"
    @task.update(task_params)
      render json: @task
  end

  # DELETE /tasks/1
  def destroy
    @task = set_task
    @task.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:user_id, :emp_id, :client, :completed, :start_date, :end_date, :description, :notes, :title)
    end
end
