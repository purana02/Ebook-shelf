class Public::FavoritesController < ApplicationController
  before_action :authenticate_customer!
  def index
    @favorites = current_customer.favorites.page(params[:page])
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
