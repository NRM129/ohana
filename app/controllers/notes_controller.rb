class NotesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  before_action :set_note, only: [:show, :edit, :update, :destroy]
  before_action :set_time, only: [:index, :show]
  before_action :move_to_index, only: [:edit, :destroy]


  def index
    # binding.pry
    # @notes = Note.all
    @first_note_date = Note.order(record_date: :DESC).first
    # @notes = Note.order(record_date: :DESC)
    @notes = Note.page(params[:page]).per(4).order(record_date: :DESC)
  end

  def new
    # binding.pry
    @note = Note.new
    @user = User.select(:facility_user)
    # @users = User.pluck(:facility_user, :id)
  end

  def create
    # binding.pry
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

  def note_params
    params.require(:note).permit(:facility_user, :image, :record_date, :weather_id, :responsible_person, :utilization_time, :body_temperature, :pulse,
                                 :blood_pressure, :taking_medicine_id, :usage_type_id, :bathing_id, :diary).merge(user_id: current_user.id)
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
