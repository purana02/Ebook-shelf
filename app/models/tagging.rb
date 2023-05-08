class Tagging < ApplicationRecord
  belongs_to :comic
  belongs_to :tag
end
