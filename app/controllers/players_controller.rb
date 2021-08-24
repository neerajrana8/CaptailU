class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def assessment
    player = Player.find(params[:player_id])
    @assessments = player.assessments
  end
end
