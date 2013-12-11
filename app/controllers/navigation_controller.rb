class NavigationController < ApplicationController

  def index 
    @test = [1,2,3,4,5,6,7]
  	@team = Team.find(current_user.team_id)

    @tasks = @team.tasks_by_type_and_month

  end


  #moved to model and approach changed to scope

  # def bau_tasks_current_month
	 #  @team.tasks.keep_if { |task| task.is_a?(Bau) && task.due_date.month == Time.now.month}
  # end

  # def project_tasks_current_month
	 #  @team.tasks.keep_if { |task| task.is_a?(Project) && task.due_date.month == Time.now.month}
  # end

  # def bau_tasks_previous_month
	 #  @team.tasks.keep_if { |task| task.is_a?(Bau) && task.due_date.month == Time.now.month-1 }
  # end

  # def project_tasks_previous_month
	 #  @team.tasks.keep_if { |task| task.is_a?(Project) && task.due_date.month == (Time.now.month-1) }
  # end

end
