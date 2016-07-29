class TeamsController < ApplicationController

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      flash[:success] = "New team created"
      redirect_to @team
    else
      render 'new'
    end
  end

  private

  def team_params
    params.require(:name).permit(:name, :location, :abbr,
                                  :conference, :division, :url)
  end

end
