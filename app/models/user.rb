class User < ApplicationRecord
  has_many :tasks
  has_many :tasks, through: :user_task, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         # override Devise with Knock defaults
alias authenticate valid_password?
def self.from_token_payload(payload)
  find(payload['sub'])
end
end
