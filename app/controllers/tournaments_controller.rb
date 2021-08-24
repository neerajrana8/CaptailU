class TournamentsController < ApplicationController

  def index
    @tournaments = Tournament.all
    render json: { data: @tournaments }
  end

  def show
    @tournament = Tournament.find(params(:tournament_id))
  end
end