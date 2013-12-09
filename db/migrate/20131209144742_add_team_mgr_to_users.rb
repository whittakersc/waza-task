class AddTeamMgrToUsers < ActiveRecord::Migration
  def change
    add_column :users, :team_mgr, :boolean
  end
end
