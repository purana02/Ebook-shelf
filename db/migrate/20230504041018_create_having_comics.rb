class CreateHavingComics < ActiveRecord::Migration[6.1]
  def change
    create_table :having_comics do |t|
      t.integer :comic_id, null: false
      t.integer :site_id, null: false
      t.integer :customer_id, null: false
      t.timestamps
    end
  end
end
