class Public::ComicsController < ApplicationController
  def index

  end

  def show
  end

  def new
    @sites = Site.all
    @genres = Genre.all
    @comic = Comic.new
    @having_comic = HavingComic.new
  end

  def create
    @having_comic = HavingComic.new(having_params)
    @comic = Comic.find_or_create_by(comic_params)
    @having_comic.customer_id = current_customer.id
    @having_comic.comic_id = @comic.id
    @having_comic.save!
    input_tags = params[:comic][:name].split(',')
    @comic.create_tags(input_tags)
    if ComicEachSite.where(comic_id: @comic.id, site_id: @having_comic.site_id).exists?
      flash[:notice] = "登録が完了しました"
      redirect_to customer_path
    else
      each_site = ComicEachSite.new
      each_site.site_id = @having_comic.site_id
      each_site.comic_id = @having_comic.comic_id
      if each_site.save
        flash[:notice] = "登録が完了しました"
        redirect_to customer_path
      else
        @genres = Genre.all
        @sites = Site.all
        render 'new'
      end
    end
  end

  def edit
  end

  private
  def comic_params
    params.require(:comic).permit(:title, :genre_id)
  end
  def having_params
    params.require(:having_comic).permit(:site_id)
  end
end
