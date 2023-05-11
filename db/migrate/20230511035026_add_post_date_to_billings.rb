class AddPostDateToBillings < ActiveRecord::Migration[6.1]
  def change
    add_column :billings, :post_date, :date
  end
end
