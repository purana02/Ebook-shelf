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
  end

  private
  def comment_params
     params.require(:comment).permit(:body)
  end
end
