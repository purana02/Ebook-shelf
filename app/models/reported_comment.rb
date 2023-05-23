class ReportedComment < ApplicationRecord
  belongs_to :comment
  belongs_to :customer

  validates :is_fixed, inclusion: { in: [true, false] }
end
