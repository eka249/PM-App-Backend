class TaskSerializer < ActiveModel::Serializer
  attributes :id, :emp_id, :user_id, :client, :start_date, :end_date, :completed, :comp_date, :description, :notes
end
