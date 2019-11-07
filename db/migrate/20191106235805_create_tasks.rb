class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :client
      t.boolean :complete
      t.text :desc
      t.text :notes
      t.date :start_date
      t.date :end_date
      t.date :date_comp

      t.timestamps
    end
  end
end
