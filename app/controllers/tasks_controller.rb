class TasksController < ApplicationController
  
  def index
    # raise current_user.team_id.inspect
    # @tasks = Task.all.where("team_id = ?", current_user.team_id)
    @tasks = current_user.team.baus.current_month
    # @team = Team.find(current_user.team_id)
  end

  def new
    @team = Team.find(current_user.team_id)
    @task = @team.tasks.new
  end

  def create
    
  end

  def baus
     @tasks = current_user.team.baus.current_month
  end

  def projects
    @tasks = current_user.team.projects.current_month
  end

  # def huddle
  #   @tasks = team.tasks_by_type_and_month
  # end

  # def dashboard
  #   @tasks = team.tasks_by_type_and_month
  # end

  def issues
  end

  # def calendar
  #   @tasks = team.tasks_by_type_and_month
  # end

  def show
    @task = Task.find(params[:id])
  end
  
end

# In rails c to create comments I did this;
# Team.first.tasks.each do |t| t.comments << FactoryGirl.create(:comment) end
