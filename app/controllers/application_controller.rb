class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  # New registration save function
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :phone_number, :is_active])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  end
end
