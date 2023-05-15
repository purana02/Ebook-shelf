class Comic < ApplicationRecord
  has_many :having_comics, dependent: :destroy
  has_many :comic_each_sites, dependent: :destroy
  has_many :sites, through: :comic_each_sites
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  belongs_to :genre

#tagの保存
  def create_tags(input_tags)
    input_tags.each do |tag|                     # splitで分けたtagをeach文で取得する
      new_tag = Tag.find_or_create_by(name: tag) # tagモデルに存在していれば、そのtagを使用し、なければ新規登録する
      tags << new_tag                            # 登録するtopicのtagに紐づける
    end
  end

#tag の更新
  def update_tags(input_tags)
    registered_tags = tags.pluck(:name) # すでに紐付けれらているタグを配列化する
    new_tags = input_tags - registered_tags # 追加されたタグ
    new_tags.each do |tag|
      new_tag = Tag.find_or_created_by(name: tag)
      tags << new_tag
    end
  end

#お気に入り登録をしているか
  def favorited_by?(customer)
    favorites.exists?(customer_id: customer.id)
  end

#漫画のキーワード検索
  def self.search(search)
    if search != ''
      @comic = Comic.where(['title LIKE ?', "%#{search}%"])
    end
  end

#タグのキーワード検索
  def self.tag_search(search)
    if search != ''
      @tag = Tag.where(['name LIKE ?', "%#{search}%"])
      @taggings = Tagging.where(tag_id: @tag.ids)
      @tagging = @taggings.pluck(:comic_id)
      @comic = Comic.where(id: @tagging)
    end
  end

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

#並び替えリスト
  scope :sort_list, -> {
    {"新着順" => "updated_at_desc",
     "レビュー数順" => "review",
     "お気に入り数順" => "favorites",
     "評価の高い順" => "evaluation"
    }
   }
end
