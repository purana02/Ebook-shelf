class AddMagnitudeToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :magnitude, :decimal, precision: 5, scale: 3
  end
end
