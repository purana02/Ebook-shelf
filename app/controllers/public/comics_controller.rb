class Public::ComicsController < ApplicationController
  def index

  end

  def show
  end

  def new
    @sites = Site.all
    @genres = Genre.all
    @comic = Comic.new
  end

  def create
    @comic = Comic.find_or_initialize_by(title: params[:title])
    if @comic.new_record?
      @comic.save
      input_tags = params[:comic][:name].split(',')
      @comic.create_tags(input_tags)
    else
      input_tags = params[:comic][:name].split(',')
      @comic.update_tags(input_tags)
    end
    comic_each_site = ComicEachSite.new
    comic_each_site.comic_id = @comic.id
    comic_each_site.site_id = site_params.to_i
    @comic_each_site.save
    having_comic = HavingComic.new
    having_comic.comic_id = @comic.id
    having_comic.customer_id = current_customer.id
    having_comic.site_id = params[:comic][:site_id].to_i
    flash[:notice] = "登録が完了しました"
    redirect_to customer_path
  end

  def edit
  end

  private
  def comic_params
    params.require(:comic).permit(:title, :genre_id)
  end

  def site_params
    params.require(:comic).permit(:site_id)
  end
end
