class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :review_id, null: false
      t.integer :customer_id, null: false
      t.string :body, null: false
      t.boolean :is_reported, null: false, default: false
      t.boolean :is_publishing, null: false, default: true
      t.timestamps
    end
  end
end
