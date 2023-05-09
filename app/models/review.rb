class Review < ApplicationRecord
  belongs_to :comic
  belongs_to :customer
  has_many :comments, dependent: :destroy

  scope :star5, -> { where(evaluation: 5).count}
  scope :star4, -> { where(evaluation: 4).count}
  scope :star3, -> { where(evaluation: 3).count}
  scope :star2, -> { where(evaluation: 2).count}
  scope :star1, -> { where(evaluation: 1).count}
end
