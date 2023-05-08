class Public::HomesController < ApplicationController
  def top
    @genres = Genre.all
    @sites = Site.all
  end

  def about
  end
end
