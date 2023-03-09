class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show]
  
  def index
    # @notes = Note.page(params[:page]).per(31).order(record_date: :DESC)
    @q = Note.ransack(params[:q])
    @notes = @q.result(distinct: true).order(record_date: :desc).page(params[:page]).per(31)
  end
  
  def show
    # binding.pry
    # @note = Note.find(params[:id])
    @notes = Note.page(params[:page]).per(10).order(record_date: :DESC)
    # @notes = Note.order(record_date: :DESC)
    @user = User.find(params[:id])
  end
end
