class Public::ReviewsController < ApplicationController
  def new
    @genres = Genre.all
    @sites = Site.all
    @comic = Comic.find(params[:comic_id])
    @review = Review.new
  end

  def create
    @comic = Comic.find(params[:comic_id])
    @review = Review.new(review_params)
    @review.customer_id = current_customer.id
    @review.comic_id = params[:comic_id]
    if @review.save
      falsh[:notice] = "レビューを投稿しました"
      redirect_to comic_path(@comic)
    else
      @genres = Genre.all
      @sites = Site.all
      render 'new'
    end
  end

  def edit
  end

  def index
  end

  def show
  end

  private
  def review_params
    params.require(:review).permit(:title, :body, :evaluation, :exists_spoiler)
  end
end
