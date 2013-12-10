class TasksController < ApplicationController

  def new
    @team = Team.find(params[:team_id])
    @task = @team.tasks.new
  end

  def create
    @team = Team.find(params[:team_id])
    @task = @team.tasks.create(params[:task].permit(:description, :owner, :due_date, :actual_hrs, :status, :user_id, :type))
    redirect_to team_path(@team)
  end      

end