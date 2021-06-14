class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  # New registration save function
  def configure_permitted_parameters

  end
end
