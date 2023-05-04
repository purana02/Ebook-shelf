class CreateComicEachSites < ActiveRecord::Migration[6.1]
  def change
    create_table :comic_each_sites do |t|
      t.integer :comic_id, null: false
      t.integer :site, null: false
      t.timestamps
    end
  end
end
