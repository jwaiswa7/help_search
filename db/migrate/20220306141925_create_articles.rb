# frozen_string_literal: true

class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.text :key_words, array: true, default: []
      t.integer :search_count, default: 0

      t.timestamps
    end
    add_index :articles, :key_words
  end
end
