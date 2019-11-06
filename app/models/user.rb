class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
has_many :tasks
  has_many :user_roles
  has_many :roles, through: :user_roles, dependent: :destroy
  
  alias_method :authenticate, :valid_password?
  #override knock authentication

  def self.from_token_payload(payload)
    self.find payload["sub"]
  end

  #this configures the response to work with devise; the JWT payload is assigned to default "sub"
end
