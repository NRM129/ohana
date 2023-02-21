class NotesController < ApplicationController
  def index
    # binding.pry
    @note = Time.now
    @notes = Note.all
    
  end

  def new
    # binding.pry
    @note = Note.new
  end

  def create
    # binding.pry
    @note = Note.new(note_params)
    if @note.save
      redirect_to root_path
    else
      render :new_note_path
    end
  end

  def show
    @note = Note.find(params[:id])
  end


  private

  def note_params
    params.require(:note).permit(:image, :record_date, :weather_id, :responsible_person, :utilization_time, :body_temperature, :pulse,
                                 :blood_pressure, :taking_medicine_id, :usage_type_id, :bathing_id).merge(user_id: current_user.id)
  end

end
