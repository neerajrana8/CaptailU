class TeamsController < ApplicationController

  def index
    tournament = Tournament.find(params[:tournament_id])
    @teams = tournament.teams
  end

  def show
    @team = Team.find(params[:id])
  end

end
