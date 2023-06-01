class AddMagnitudeToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :magnitude, :decimal, precision: 5, scale: 3
  end
end
