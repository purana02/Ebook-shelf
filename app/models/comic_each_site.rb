class ComicEachSite < ApplicationRecord
  belongs_to :comic
  belongs_to :site
  
  validates :comic_id, presence: true
  validates :site_id, presence: true
end
