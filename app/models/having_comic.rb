class HavingComic < ApplicationRecord
  belongs_to :customer
  belongs_to :comic
  belongs_to :site
  
  validates :customer_id, presence: true
  validates :comic_id, presence: true
  validates :site_id, presence: true
  
end
