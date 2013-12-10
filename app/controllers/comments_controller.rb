class CommentsController < ApplicationController

  def new
    @task = Task.find(params[:task_id])
    @comment = @task.comments.new
  end

  def create
  	@task = Task.find(params[:task_id])
  	@comment = @task.comments.create(params[:comment].permit(:discription, :user_id, :task_id))
  	@team = @task.team_id
  	redirect_to team_path(@team)
  end
  
end
