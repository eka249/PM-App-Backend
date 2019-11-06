class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :assigned_to
      t.string :assigned_by
      t.string :client
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
