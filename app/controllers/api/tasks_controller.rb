module Api
    class TasksController < ApiController
      before_action :authenticate_user
      before_action :set_task, only: [:update]
  
      def index
        json_response(current_user.tasks)
      end
  
      def create
        @task = current_user.tasks.new(task_params)
        if @task.save
          json_response(@task, :created)
        else
          json_response(@task)
        end
      end
  
      def update
        if @task.update_attributes(task_params)
          json_response(@task, :ok)
        else
          json_response(@task)
        end
      end
  
      private
  
      def task_params
        params.require(:task).permit(:client, :complete, :desc, :notes, :start_date, :end_date, :date_comp)
      end
  
      def set_task
        @task = current_user.tasks.find_by(id: params[:id])
      end
    end
  end