class Admin::HomesController < ApplicationController
  def top
    @sites = Site.all
    @genres = Genre.all
    @reviews = Review.all.order(created_at: :desc)
  end
end
