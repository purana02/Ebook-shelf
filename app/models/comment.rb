class Comment < ApplicationRecord
  belongs_to :customer
  belongs_to :review
  has_many :reported_comments, dependent: :destroy
end
