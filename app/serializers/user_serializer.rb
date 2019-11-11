class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :unit, :email, :role, :password_digest
end