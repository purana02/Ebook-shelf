class Admin::ReviewsController < ApplicationController
  def show
    @genres = Genre.all
    @sites = Site.all
    @review = Review.find(params[:id])
    @comic = Comic.find(params[:comic_id])
  end

  def update
    @review = Review.find(params[:id])
    @comic = Comic.find(params[:comic_id])
    if @review.update(review_params)
      flash[:notice]="編集が完了しました"
      redirect_to admin_comic_review_path(@comic,@review)
    else
      render 'show'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to admin_root_path
  end

  private
  def review_params
     params.require(:review).permit(:exists_spoiler, :is_reported, :is_publishing)
  end
end
