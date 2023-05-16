class CreateTaggings < ActiveRecord::Migration[6.1]
  def change
    create_table :taggings do |t|
      t.integer :tag_id, null: false
      t.integer :comic_id, null: false
      t.timestamps
    end
    add_index :likes, [:tag_id, :comic_id], unique: true
  end
end
