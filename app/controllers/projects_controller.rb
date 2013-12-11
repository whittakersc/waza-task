class ProjectsController < ApplicationController

  def new
    @team = Team.find(params[:team_id])
    @task = @team.projects.new
    @task.type = params[:type]
  end

  def create
    @team = Team.find(params[:team_id])
    @task = @team.projects.create(params[:task].permit(:description, :owner, :due_date, :actual_hrs, :status, :user_id, :type, :report_tag, :expected_hrs, :requested_by, :time))
    redirect_to team_path(@team)
  end      

end