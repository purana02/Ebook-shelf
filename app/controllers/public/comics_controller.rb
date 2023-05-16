class Public::ComicsController < ApplicationController
  def index
    @genres = Genre.all
    @sites = Site.all
    @sort_list = Comic.sort_list
    if params[:genre_id]
      @genre = Genre.find(params[:genre_id])
      @comics = @genre.comics.all
      @comics_all = @genre.comics.all
    elsif params[:tag_id]
      @tag = Tag.find(params[:tag_id])
      @comics = @tag.comics.all
      @comics_all = @tag.comics.all
    else
      if sort_params.present?
        @comics = Comic.sort_comics(sort_params)
      else
        @comics = Comic.all
      end
      @comics_all = Comic.all
    end
  end

  def show
    @genres = Genre.all
    @sites = Site.all
    @comic = Comic.find(params[:id])
    @tags = @comic.tags.all
    @each_sites = @comic.sites.all
    @reviews = @comic.reviews.all
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

  def search
    @comics = Comic.search(params[:keyword])
    @tags = Comic.tag_search(params[:keyword])
    @genres = Genre.all
    @sites = Site.all
  end

  private
  def comic_params
    params.require(:comic).permit(:title, :genre_id)
  end
  def having_params
    params.require(:having_comic).permit(:site_id)
  end
  def sort_params
      params.permit(:sort)
  end
end
