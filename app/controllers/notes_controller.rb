class NotesController < ApplicationController
  def index
    @note = Time.now
  end
end
