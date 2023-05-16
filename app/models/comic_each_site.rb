class ComicEachSite < ApplicationRecord
  belongs_to :comic
  belongs_to :site

  #漫画の並び替え
  def self.sort_comics(sort)
    case sort[:sort]
    when 'updated_at_desc'
      order(created_at: :DESC)
    when 'favorites'
      find(Favorite.group(:comic_id).order(Arel.sql('count(comic_id) desc')).pluck(:comic_id))
    when 'review'
      find(Review.group(:comic_id).order(Arel.sql('count(comic_id) asc')).pluck(:comic_id))
    when 'evaluation'
      find(Review.group(:comic_id).order(Arel.sql('avg(evaluation) desc')).pluck(:comic_id))
    else
      order(created_at: :ASC)
    end
  end
end
