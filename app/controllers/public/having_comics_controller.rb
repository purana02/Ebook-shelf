class Public::HavingComicsController < ApplicationController
  def new
    @having_comic = HavingComic.new
    @genres = Genre.all
    @sites = Site.all
  end
  
  def create
    @having_comic = HavingComic.new(having_params)
    @comic = Comic.where(title: params[:title])
    if @comic.exist?
      @having_comic.comic_id = @comic.id
      @having_comic.customer_id = current_customer.id
      @having_comic.save
    else
       @comic_new = Comic.new
       @comic_new.title = params[:having_comic][:title]
       @comic_new.genre_id = params[:having_comic][:genre_id]
       @comic_new.save
    end
  end
  
  private
  def having_params
    require.params(:having_comic).permit(:site_id)
  end
end
