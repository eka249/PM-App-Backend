class TaskSerializer < ActiveModel::Serializer
  attributes :id, :client, :complete, :desc, :notes, :start_date, :end_date, :date_comp
end
