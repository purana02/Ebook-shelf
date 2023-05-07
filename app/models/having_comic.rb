class HavingComic < ApplicationRecord
  belongs_to :customer
  belongs_to :comic
  belongs_to :site
end
