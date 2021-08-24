class TournamentsController < ApplicationController
  helper TournamentHelper
  def index
    @tournaments = Tournament.all
  end

  def show
    @tournament = Tournament.find(params[:id])
  end
end