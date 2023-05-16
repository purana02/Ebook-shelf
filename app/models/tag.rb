class Tag < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :comics, through: :taggings

  validates :name, uniqueness: true, presence: true

end
