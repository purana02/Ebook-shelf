class Admin::ComicsController < ApplicationController
  def index
    @genres = Genre.all
    @sites = Site.all
    if params[:genre_id]
      @genre = Genre.find(params[:genre_id])
      @comics = @genre.comics.all
      @comics_all = @genre.comics.all
    else
      @comics_all = Comic.all
      @comics = Comic.all
    end
  end

  def show
  end
end
