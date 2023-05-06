class Tag < ApplicationRecord
  has_many :commics, through: :taggings
end
