class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show]
  before_action :move_to_index, only: [:show]

  
  def index
    @q = Note.ransack(params[:q])
    @notes = @q.result(distinct: true).order(record_date: :desc).page(params[:page]).per(31)
  end
  
  def show
    @notes = Note.page(params[:page]).per(10).order(record_date: :DESC)
    @user = User.find(params[:id])
  end
end


  def move_to_index
    @user = User.find(params[:id])
    if current_user.facility_user != @user.facility_user
      redirect_to root_path
  end
end