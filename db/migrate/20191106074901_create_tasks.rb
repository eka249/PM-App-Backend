class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :manager_id
      t.string :client
      t.boolean :completed
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
