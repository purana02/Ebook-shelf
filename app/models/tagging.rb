class Tagging < ApplicationRecord
  belongs_to :comic
  belongs_to :tag

  validates :tag_id, uniqueness: { scope: :comic_id }
end
