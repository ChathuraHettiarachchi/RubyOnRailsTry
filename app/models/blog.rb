# frozen_string_literal: true

# Blog model
class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
end
