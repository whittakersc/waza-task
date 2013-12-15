class Team < ActiveRecord::Base

  has_many :users
  has_many :tasks
  has_many :projects
  has_many :baus
  # after_create :add_task


  def tasks_by_type_and_month
    {:baus_this_month => baus.current_month, 
     :projects_this_month => projects.current_month,
       :baus_previous_month => projects.previous_month,
       :projects_previous_month => projects.previous_month,
         :tasks_this_month => tasks.current_month,
         :tasks_previous_month => tasks.previous_month
    }
  end

end
