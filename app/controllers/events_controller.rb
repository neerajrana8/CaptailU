class EventsController < ApplicationController
  def index
    tournament = Tournament.find(params[:tournament_id])
    @events = tournament.events
  end
end
