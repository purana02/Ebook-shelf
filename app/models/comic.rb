class Comic < ApplicationRecord
  has_many :having_comics
  has_many :sites, throug: :comic_each_sites
  has_many :tags, thoroug: :taggings
  belongs_to :genre
end
