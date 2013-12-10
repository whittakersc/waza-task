class AddTimeToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :time, :string
    add_column :tasks, :report_tag, :string
    add_column :tasks, :expected_hrs, :string
    add_column :tasks, :requested_by, :string
  end
end
