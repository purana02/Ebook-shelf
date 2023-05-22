class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!
  def top
    @sites = Site.all
    @genres = Genre.all
    @reviews = Review.all.order(created_at: :desc).page(params[:page])
  end
end
