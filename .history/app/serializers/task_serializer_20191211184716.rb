class TaskSerializer < ActiveModel::Serializer
  attributes :id, :emp_id, :user_id, :client, :start_date, :end_date, :completed, :comp_date, :description, :notes, :title, :users

  def users
    self.object.users.map do |user|
      {first_name: user.first_name,
      unit: user.unit}
      end
    end
    
end
