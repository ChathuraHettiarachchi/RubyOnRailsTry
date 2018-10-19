# frozen_string_literal: true

# DeviseWhitelist module
module DeviseWhitelist
  extend ActiveSupport::Concern

  included do
    before_action :configure_permited_parameters, if: :devise_controller?
  end

  def configure_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:accout_update, keys: [:name])
  end
end
