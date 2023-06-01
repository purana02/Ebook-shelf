class Admin::CommentsController < ApplicationController
   before_action :authenticate_admin!
  def index
    @genres = Genre.all
    @sites = Site.all
    @comments = Comment.all.order(created_at: :desc).page(params[:page])
  end
  def show
    @genres = Genre.all
    @sites = Site.all
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice]="編集が完了しました"
      redirect_to admin_comment_path(@comment)
    else
      render 'show'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to admin_root_path
  end

  private
  def comment_params
    params.require(:comment).permit(:is_reported, :is_publishing)
  end
end
