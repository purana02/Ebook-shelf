class Site < ApplicationRecord
  has_many :comics, through: :comic_each_sites
end
