# frozen_string_literal: true

# Application controller
class ApplicationController < ActionController::Base
  before_action :configure_permited_parameters, if: :devise_controller?
  include DeviseWhitelist
end
