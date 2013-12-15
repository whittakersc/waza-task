class TasksController < ApplicationController
  
  def index
    @tasks = Task.all
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
