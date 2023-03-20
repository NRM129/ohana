class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :edit]
  before_action :exclusive_page, only: [:index]
  before_action :move_to_index, only: [:show, :edit]

  
  def index
    @users = User.all
    @q = Note.ransack(params[:q])
    @notes = @q.result(distinct: true).order(record_date: :desc).page(params[:page]).per(31)
  end
  
  def show
    @notes = Note.page(params[:page]).per(10).order(record_date: :DESC)
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end
end


  def exclusive_page
    @users = User.all
    if current_user.id != 1
    redirect_to root_path
    end
  end

  def move_to_index
    @user = User.find(params[:id])
    if current_user.facility_user != @user.facility_user
      redirect_to root_path
  end
end
