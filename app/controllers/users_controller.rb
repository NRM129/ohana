class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  
  
  def show
    # binding.pry
    # @note = Note.find(params[:id])
    @notes = Note.order(record_date: :DESC)
  end
end
