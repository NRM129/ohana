class NotesController < ApplicationController
  def index
    @note = Time.now
    # @note = Note.find(params[:id])
  end
end
