class TasksController < ApplicationController
  
  def index
    # raise current_user.team_id.inspect
    # @tasks = Task.all.where("team_id = ?", current_user.team_id)
    @tasks = current_user.team.tasks
    # @team = Team.find(current_user.team_id)
  end

  def baus
    @tasks = Bau.all
  end

  def projects
    @tasks = Project.all
  end

  def huddle
  end

  def dashboard
  end

  def issues
  end

  def calendar
  end

  def show
    @task = Task.find(params[:id])
  end
  
end
