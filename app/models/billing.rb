class Billing < ApplicationRecord
  belongs_to :customer
  belongs_to :site
end
