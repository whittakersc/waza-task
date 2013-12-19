class TasksController < ApplicationController
  respond_to :html, :json
  
  def index
    # raise current_user.team_id.inspect
    # @tasks = Task.all.where("team_id = ?", current_user.team_id)
    @tasks = current_user.team.tasks
    # @team = Team.find(current_user.team_id)
  end

  def new
    @team = current_user.team
    @task = @team.tasks.new
  end

  def create
    @team = current_user.team
    @task = @team.tasks.create(params[:task].permit(:description, :owner, :due_date, :actual_hrs, :status, :user_id, :type, :report_tag, :expected_hrs, :requested_by, :time))
    redirect_to tasks_calendar_path
  end

  def baus
    @tasks = Bau.all
  end

  def projects
    @task = Project.all.last
  end

  def huddle
  end

  def dashboard
  end

  def issues
    @tasks = Task.current_month
    @date = Date.today
  end

  def calendar
    @date = Date.today
    @calendar_views = [Task.current_month, Task.previous_month, Task.current_month, Task.previous_month]
  end

  def show
    @task = Task.find(params[:id])
  end

  def profile
    render json: current_user.team.tasks.last(5) 
  end
  
end
