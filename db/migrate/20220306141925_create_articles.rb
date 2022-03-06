class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.text :tags

      t.timestamps
    end
    add_index :articles, :tags
  end
end
