class DropColumnTask < ActiveRecord::Migration
  def change
  	remove_column :tasks, :Team_id
  end
end
