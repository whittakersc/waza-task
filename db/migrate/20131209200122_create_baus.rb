class CreateBaus < ActiveRecord::Migration
  def change
    create_table :baus do |t|
      t.datetime :time_due
      t.string :report_tag
      t.integer :expected_hrs

      t.timestamps
    end
  end
end
