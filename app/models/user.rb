class User < ApplicationRecord
has_secure_password
has_many :tasks
  has_many :user_roles
  has_many :roles, through: :user_roles, dependent: :destroy

end
