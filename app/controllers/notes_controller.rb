class NotesController < ApplicationController
  def index
    @note = Time.now
    # @note = Note.find(params[:id])
  end

  def new
  end

  private

  def item_params
    params.require(:note).permit(:image, :record_date, :weather, :responsible_person, :utilization_time, :body_temperature, :pulse,
                                 :blood_pressure, :taking_medicine, :usage_type, :bathing).merge(user_id: current_user.id)
  end

end
