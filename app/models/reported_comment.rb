class ReportedComment < ApplicationRecord
  belongs_to :comment
  belongs_to :customer_id
end
