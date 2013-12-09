class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :owner
      t.datetime :due_date
      t.integer :actual_hrs
      t.string :status
      t.timestamps
    end
  end
end
