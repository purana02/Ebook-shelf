class  Public::ComicEachSitesController < ApplicationController
  def show
    @genres = Genre.all
    @sites = Site.all
    @site = Site.find(params[:id])
    @comics_each = ComicEachSite.where(site_id: params[:id])
  end
end
