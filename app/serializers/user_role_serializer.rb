class UserRoleSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :role_id
end
