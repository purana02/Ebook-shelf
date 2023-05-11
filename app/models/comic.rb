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

  def self.search(search)
    if search != ''
      @comic = Comic.where(['title LIKE ?', "%#{search}%"])
    end
  end

  def self.tag_search(search)
    if search != ''
      @tag = Tag.where(['name LIKE ?', "%#{search}%"])
      @taggings = Tagging.where(tag_id: @tag.ids)
      @tagging = @taggings.pluck(:comic_id)
      @comic = Comic.where(id: @tagging)
    end
  end
end
