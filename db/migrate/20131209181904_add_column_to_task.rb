class AddColumnToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :team_id, :string
  end
end
