class NotesController < ApplicationController
  before_action :basic_auth
  before_action :authenticate_user!, only: [:new, :edit]
  before_action :set_note, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :destroy]


  def index
    @first_note_date = Note.order(record_date: :DESC).first
    @notes = Note.page(params[:page]).per(4).order(record_date: :DESC)
  end

  def new
    @note = Note.new
    @user = User.select(:facility_user)
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @note.comments.includes(:user)
  end

  def edit
  end

  def update
    if @note.update(note_params)
      redirect_to note_path
    else
      render :edit
    end
  end

  def destroy
    @note.destroy
    redirect_to root_path
  end



  private

  def basic_auth
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def note_params
    params.require(:note).permit(:facility_user, :image, :record_date, :weather_id, :responsible_person, :utilization_time, :body_temperature, :pulse,
                                 :sbp, :dbp, :taking_medicine_id, :usage_type_id, :bathing_id, :diary).merge(user_id: current_user.id)
  end


  def set_time
    @time = Time.now
  end

  def set_note
    @note = Note.find(params[:id])
  end

  def move_to_index
    return if user_signed_in?
    redirect_to action: :index
  end

end
