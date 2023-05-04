class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :customer_id, null: false
      t.integer :comic_id, null: false
      t.string :title, null: false
      t.text :body
      t.float :evaluation, null: false
      t.boolean :exists_spoiler, null: false, default: true
      t.boolean :is_reported, null: false, default: false
      t.boolean :is_publishing, null: false, default: true
      t.timestamps
    end
  end
end
