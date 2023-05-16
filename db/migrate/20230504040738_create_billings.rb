class CreateBillings < ActiveRecord::Migration[6.1]
  def change
    create_table :billings do |t|
      t.integer :customer_id,null: false
      t.integer :site_id,null: false
      t.integer :price,null: false
      t.timestamps
    end
  end
end
