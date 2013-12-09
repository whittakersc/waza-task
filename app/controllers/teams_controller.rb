class TeamsController < ApplicationController

  def index
  	@teams = Team.all
  end

  def new
  	@team = Team.new
  end

  def create
    @team = Team.create(params[:team].permit(:name, :division))
    if @team.save
      flash[:notice] = "Your team has been successfully added"
      redirect_to @team
    else
      render 'new'
    end
  end

  def show
  	@team = Team.find(params[:id])
  end

  def edit
  	@team = Team.find(params[:id])
  end

  def update
  	@team = Team.find(params[:id])
  	  if @team.update(params[:team].permit(:name, :division))
      flash[:notice] = "Your changes have been successfully been added"
      redirect_to @team
    else
      render 'edit'
    end
  end

end
