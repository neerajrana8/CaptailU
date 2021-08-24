class NotesController < ApplicationController
  before_action :set_note, except: [:index]
  def index
    assessment = Assessment.find(params[:assessment_id])
    @notes = assessment.notes
  end

  def show
  end

  def destroy
    if @note.destroy
      render json: {message: "Success"}
    else
      render json: {message: "Failed"}
    end
  end

  private
  def set_note
    @note = Note.find(params[:id])
  end
end
