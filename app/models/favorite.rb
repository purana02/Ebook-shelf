class Favorite < ApplicationRecord
  belongs_to :comic
  belongs_to :customer
  
  validates :comic_id, presence: true
  validates :customer_id, presence: true
end
