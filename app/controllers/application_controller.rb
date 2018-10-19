# frozen_string_literal: true

# Application controller
class ApplicationController < ActionController::Base
  before_action :configure_permited_parameters, if: :devise_controller?

  def configure_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:accout_update, keys: [:name])
  end
end
