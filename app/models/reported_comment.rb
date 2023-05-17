class ReportedComment < ApplicationRecord
  belongs_to :comment
  belongs_to :customer_id

  validates :is_fixed, inclusion: { in: [true, false] }
end
