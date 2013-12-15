class DropProjectsTable < ActiveRecord::Migration
  def change
  	drop_table :projects
  	drop_table :baus
  end
end
