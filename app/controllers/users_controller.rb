class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  
  def index
    @notes = Note.page(params[:page]).per(31).order(record_date: :DESC)
  end
  
  def show
    # binding.pry
    # @note = Note.find(params[:id])
    @notes = Note.order(record_date: :DESC)
  end
end
