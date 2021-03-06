# frozen_string_literal: true

# CreateSkills
class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :title
      t.integer :percent_utilized

      t.timestamps
    end
  end
end
