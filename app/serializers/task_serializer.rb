class TaskSerializer < ActiveModel::Serializer
  attributes :id, :manager_id, :user_id, :client, :start_date, :end_date, :completed
end
