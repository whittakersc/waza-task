class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :requested_by

      t.timestamps
    end
  end
end
