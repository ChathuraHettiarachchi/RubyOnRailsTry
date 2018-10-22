# frozen_string_literal: true

# Application controller
class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource
end
