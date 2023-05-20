class Admin::SitesController < ApplicationController
  before_action :authenticate_admin!
  def index
    @sites = Site.all
    @site = Site.new
  end

  def create
    @site = Site.new(site_params)
    if @site.save
      flash[:notice] = "登録に成功しました"
      redirect_to request.referer
    else
      @sites = Site.all
      render :index
    end
  end

  def edit
    @site = Site.find(params[:id])
  end

  def update
    @site = Site.find(params[:id])
    if @site.update(site_params)
      flash[:notice] = "編集に成功しました"
      redirect_to admin_sites_path
    else
      render :edit
    end
  end

  def destroy
    @site = Site.find(params[:id])
    @site.destroy
    flash[:notice] = "削除しました"
    redirect_to admin_sites_path
  end

 private
  def site_params
    params.require(:site).permit(:name)
  end
end
