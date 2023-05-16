class Public::HomesController < ApplicationController
  def top
    @genres = Genre.all
    @sites = Site.all
    @comics = Comic.star_rank
    @reviews = Review.order(created_at: :desc).limit(5)
  end

  def about
  end
end
