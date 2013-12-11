class NavigationController < ApplicationController

  def index 
    @test = [1,2,3,4,5,6,7]
  	@team = Team.find(current_user.team_id)

  	@tasks_bau_current_month = @team.baus.current_month
  	@tasks_project_current_month = @team.projects.current_month

  	@tasks_bau_prior_month = @team.baus.previous_month
  	@tasks_project_prior_month = @team.projects.previous_month

    @tasks_count_current = @team.tasks.current_month.count
    @tasks_count_previous = @team.tasks.previous_month.count

    @baus_count_current = @team.baus.current_month.count
    @projects_count_current = @team.projects.current_month.count

    @tasks_complete_status_current_count = @team.tasks.current_month.status_complete.count
    @baus_complete_status_current_count = @team.baus.current_month.status_complete.count
    @projects_complete_status_current_count = @team.projects.current_month.status_complete.count

    @tasks_in_progress_status_current_count = @team.tasks.current_month.status_in_progress.count
    @baus_in_progress_status_current_count = @team.baus.current_month.status_in_progress.count
    @projects_in_progress_status_current_count = @team.projects.current_month.status_in_progress.count

    @tasks_to_do_status_current_count = @team.tasks.current_month.status_to_do.count
    @baus_to_do_status_current_count = @team.baus.current_month.status_to_do.count
    @projects_to_do_status_current_count = @team.projects.current_month.status_to_do.count

    @baus_count_previous = @team.baus.previous_month.count
    @projects_count_previous = @team.projects.previous_month.count

    @tasks_complete_status_previous_count = @team.tasks.previous_month.status_complete.count
    @baus_complete_status_previous_count = @team.baus.previous_month.status_complete.count
    @projects_complete_status_previous_count = @team.projects.previous_month.status_complete.count

    @tasks_in_progress_status_previous_count = @team.tasks.previous_month.status_in_progress.count
    @baus_in_progress_status_previous_count = @team.baus.previous_month.status_in_progress.count
    @projects_in_progress_status_previous_count = @team.projects.previous_month.status_in_progress.count

    @tasks_to_do_status_previous_count = @team.tasks.previous_month.status_to_do.count
    @baus_to_do_status_previous_count = @team.baus.previous_month.status_to_do.count
    @projects_to_do_status_previous_count = @team.projects.previous_month.status_to_do.count

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
