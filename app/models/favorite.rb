class Favorite < ApplicationRecord
  belongs_to :comic
  belongs_to :customer
end
