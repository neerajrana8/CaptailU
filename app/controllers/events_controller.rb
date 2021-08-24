class EventsController < ApplicationController
  def index
    tournament = Tournament.find(params[:tournament_id])
    @events = tournament.events
  end

  def show
    @event = Event.find(params[:id])
  end
end
