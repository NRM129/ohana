class NotesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  before_action :set_note, only: [:show, :edit, :update, :destroy]
  before_action :set_time, only: [:index, :show]


  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to root_path
    else
      render :new_note_path
    end
  end

  def show
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
    params.require(:note).permit(:image, :record_date, :weather_id, :responsible_person, :utilization_time, :body_temperature, :pulse,
                                 :blood_pressure, :taking_medicine_id, :usage_type_id, :bathing_id, :diary).merge(user_id: current_user.id)
  end


  def set_time
    @time = Time.now
  end

  def set_note
    @note = Note.find(params[:id])
  end

end
