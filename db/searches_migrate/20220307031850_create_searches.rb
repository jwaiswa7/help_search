# frozen_string_literal: true

class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.integer :user, null: false
      t.string :question
      t.text :articles, array: true, default: []

      t.timestamps
    end
    add_index :searches, :user
  end
end
