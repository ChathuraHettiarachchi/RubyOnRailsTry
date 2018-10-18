# frozen_string_literal: true

# Skill model
class Skill < ApplicationRecord
  validates :title, :percent_utilized, presence: true
end
