class Public::FavoritesController < ApplicationController
  def index
  end

  def create
    comic = Comic.find(params[:comic_id])
    @favorite = current_customer.favorites.new(comic_id: comic.id)
    @favorite.save
    redeirect_to comic_parh(comic)
  end

  def destroy
    comic = Comic.find(params[:comic_id])
    @favorite = current_customer.favorites.find_by(comic_id: comic.id)
    @favorite.destroy
    redirect_to comic_path(comic)
  end

end
