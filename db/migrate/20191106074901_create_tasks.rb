class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :emp_id
      t.string :client
      t.text :notes
      t.text :description
      t.boolean :completed
      t.date :start_date
      t.date :end_date
      t.date :comp_date

      t.timestamps
    end
  end
end
