class Task < ApplicationRecord
    has_many :user_tasks 
    has_many :users, through: :user_task, dependent: :destroy
end
