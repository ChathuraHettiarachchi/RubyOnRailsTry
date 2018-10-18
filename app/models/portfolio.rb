# frozen_string_literal: true

# Portfolio
class Portfolio < ApplicationRecord
  validates :title, :body, :main_image, :thumb_image, presence: true
end
