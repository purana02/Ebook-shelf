class Review < ApplicationRecord
  belongs_to :comic
  belongs_to :customer
  belongs_to :comic
  has_many :comments, dependent: :destroy
  has_many :reporteds, dependent: :destroy

  validates :title, presence: true
  validates :evaluation, presence: true
  validates :exists_spoiler, inclusion: { in: [true, false] }
  validates :is_reported, inclusion: { in: [true, false] }
  validates :is_publishing, inclusion: { in: [true, false] }

 #星毎の件数を数える
  scope :star5, -> { where(evaluation: 5).count}
  scope :star4, -> { where(evaluation: 4).count}
  scope :star3, -> { where(evaluation: 3).count}
  scope :star2, -> { where(evaluation: 2).count}
  scope :star1, -> { where(evaluation: 1).count}

 #会員に通報されたレビューがあるか調べる
  scope :reported, -> { where(is_reported: true) }

end
