class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:name, :facility_user, :phone_number, :birthday, :blood_type, :start_date])
  end

  protected
  def update_resource(resource, params)
    resource.update_without_password(params)
  end
end