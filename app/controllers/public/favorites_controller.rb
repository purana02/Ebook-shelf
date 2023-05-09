class Public::FavoritesController < ApplicationController
  def index
    @favorites = current_customer.favorites.all
  end

  def create
    comic = Comic.find(params[:comic_id])
    @favorite = current_customer.favorites.new(comic_id: comic.id)
    @favorite.save
    redirect_to comic_path(comic)
  end

  def destroy
    comic = Comic.find(params[:comic_id])
    @favorite = current_customer.favorites.find_by(comic_id: comic.id)
    @favorite.destroy
    redirect_to comic_path(comic)
  end

end
