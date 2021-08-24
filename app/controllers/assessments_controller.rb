class AssessmentsController < ApplicationController
  before_action :set_assessment, except: [:index]
  def index
    @player = Player.find(params[:player_id])
    @assessments = @player.assessments
  end

  def show
  end

  def destroy
    if @assessment.destroy
      render json: {message: "Success"}
    else
      render json: {message: "Failed"}
    end
  end
  private

  def set_assessment
    @assessment = Assessment.find(params[:id])
  end
end
