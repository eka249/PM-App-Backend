class UserTaskSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :emp_id, :task_id
end
