# frozen_string_literal: true

class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.references :user, null: false, foreign_key: true
      t.string :question
      t.text :articles, array: true, default: []

      t.timestamps
    end
  end
end
