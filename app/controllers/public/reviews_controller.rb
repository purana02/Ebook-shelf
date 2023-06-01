class Public::ReviewsController < ApplicationController
  before_action :authenticate_customer!
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
    if review_params[:body]
      @review.score = Language.get_data(review_params[:body])
      @review.magnitude = Language.get_magnitude(review_params[:body])
    end
    if @review.save
      flash[:notice] = "レビューを投稿しました"
      redirect_to comic_path(@comic)
    else
      @genres = Genre.all
      @sites = Site.all
      render 'new'
    end
  end

  def confirm_reported
    @comic = Comic.find(params[:comic_id])
    @review = Review.find(params[:id])
  end

  def is_reported
    @comic = Comic.find(params[:comic_id])
    @review = Review.find(params[:id])
    if @review.update(is_reported: true)
      reported = Reported.new
      reported.customer_id = current_customer.id
      reported.review_id = params[:id]
      reported.save
      flash[:notice] = "レビューの報告をしました"
      redirect_to comic_path(@comic)
    else
      render 'confirm_reported'
    end
  end

  private
  def review_params
    params.require(:review).permit(:title, :body, :evaluation, :exists_spoiler)
  end
end
