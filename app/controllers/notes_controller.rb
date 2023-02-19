class NotesController < ApplicationController
  def index
    @note = Time.now
    # @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  private

  def item_params
    params.require(:note).permit(:image, :record_date, :weather_id, :responsible_person, :utilization_time, :body_temperature, :pulse,
                                 :blood_pressure, :taking_medicine, :usage_type_id, :bathing).merge(user_id: current_user.id)
  end

end
