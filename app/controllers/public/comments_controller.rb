class Public::CommentsController < ApplicationController
  def new
    @genres = Genre.all
    @sites = Site.all
    @comic = Comic.find(params[:comic_id])
    @review = Review.find(params[:review_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.customer_id = current_customer.id
    @comment.review_id = params[:review_id]
    if @comment.save
      flash[:notice] = "コメントを投稿しました"
      redirect_to comic_path(params[:comic_id])
    else
      @genres = Genre.all
      @sites = Site.all
      @comic = Comic.find(params[:comic_id])
      @review = Review.find(params[:review_id])
      render 'new'
    end
  end

  def confirm_reported
    @comment = Comment.find(params[:id])
    @review = Review.find(params[:review_id])
    @comic = Comic.find(params[:comic_id])
  end

  def is_reported
    @comment = Comment.find(params[:id])
    @review = Review.find(params[:review_id])
    @comic = Comic.find(params[:comic_id])
    if @comment.update(is_reported: true)
      reported = ReportedComments.new
      reported.customer_id = current_customer.id
      reported.comment_id = params[:id]
      reported.save
      flash[:notice] = "コメントの報告をしました"
      redirect_to comic_path(@comic)
    else
      render 'confirm_reported'
    end
  end

  private
  def comment_params
     params.require(:comment).permit(:body)
  end
end
