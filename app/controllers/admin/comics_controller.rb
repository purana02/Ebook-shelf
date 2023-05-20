class Admin::ComicsController < ApplicationController
  before_action :authenticate_admin!
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
    @genres = Genre.all
    @sites = Site.all
    @comic = Comic.find(params[:id])
    @tags = @comic.tags.all
    @each_sites = @comic.sites.all
    @reviews = @comic.reviews.all
  end
end
