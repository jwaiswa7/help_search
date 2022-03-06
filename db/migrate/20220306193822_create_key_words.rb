class CreateKeyWords < ActiveRecord::Migration[7.0]
  def change
    create_table :key_words do |t|
      t.string :name
      t.text :articles

      t.timestamps
    end
    add_index :key_words, :name
  end
end
