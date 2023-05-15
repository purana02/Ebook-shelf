class  Public::ComicEachSitesController < ApplicationController
  def show
    @genres = Genre.all
    @sites = Site.all
    @sort_list = Comic.sort_list
    @site = Site.find(params[:id])
    @comics_each = ComicEachSite.where(site_id: params[:id])
  end

  private
  def sort_params
      params.permit(:sort)
  end
end
