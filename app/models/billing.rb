class Billing < ApplicationRecord
  belongs_to :customer
  belongs_to :site

  validates :price, presence: true
  validates :post_date, presence: true
end
