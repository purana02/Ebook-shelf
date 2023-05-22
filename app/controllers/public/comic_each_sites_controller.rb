class  Public::ComicEachSitesController < ApplicationController
  def show
    @genres = Genre.all
    @sites = Site.all
    @site = Site.find(params[:id])
    @sort_list = Comic.sort_list
    @comics_each = Comic.includes(:comic_each_sites).where(comic_each_sites: { site_id: params[:id]}).page(params[:page])
  end

  private
  def sort_params
      params.permit(:sort)
  end
end
