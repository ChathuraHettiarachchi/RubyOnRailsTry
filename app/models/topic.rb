# frozen_string_literal: true

# Topic model
class Topic < ApplicationRecord
  validates :title, presence: true

  has_many :blogs
end
