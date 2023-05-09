class Tag < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :commics, through: :taggings

  validates :name, uniqueness: true, presence: true

end
