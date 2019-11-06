class TaskSerializer < ActiveModel::Serializer
  attributes :id, :assigned_to, :assigned_by, :client, :start_date, :end_date
end
