class CreateReporteds < ActiveRecord::Migration[6.1]
  def change
    create_table :reporteds do |t|
      t.integer :review_id, null: false
      t.integer :customer_id, null: false #通報した会員
      t.boolean :is_fixed, null: false, default: false #対応したか
      t.timestamps
    end
  end
end
