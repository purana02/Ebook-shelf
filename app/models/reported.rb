class Reported < ApplicationRecord
  belongs_to :review
  belongs_to :customer

  validates :is_fixed, inclusion: { in: [true, false] }
end
