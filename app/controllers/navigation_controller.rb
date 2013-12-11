class NavigationController < ApplicationController

  def index 
  	@team = Team.find(current_user.team_id)
  	@tasks_bau_current_month = @team.baus.current_month
  	@tasks_project_current_month = @team.projects.current_month
  	@tasks_bau_prior_month = @team.baus.previous_month
  	@tasks_project_prior_month = project_tasks_previous_month
  end

  protected

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
