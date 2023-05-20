class Comment < ApplicationRecord
  belongs_to :customer
  belongs_to :review
  has_many :reported_comments, dependent: :destroy

  validates :body, presence: true, length: { minimum: 3 }
  validates :is_reported, inclusion: { in: [true, false] }
  validates :is_publishing, inclusion: { in: [true, false] }
  validates :customer_id, presence: true
  validates :review_id, presence: true

end
