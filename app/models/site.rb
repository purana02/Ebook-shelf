class Site < ApplicationRecord
  has_many :comics_each_sites, dependent: :destroy
  has_many :comics, through: :comic_each_sites
  has_many :having_comics, dependent: :destroy
  has_many :billings, dependent: :destroy
  
  validates :name, presence: true
  
end
