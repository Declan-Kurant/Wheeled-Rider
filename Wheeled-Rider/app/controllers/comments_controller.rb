class CommentsController < ApplicationController
  # index
  def index
    @comments = Comment.all
  end

  # new
  def new
    @vehicle = Vehicle.find(params[:vehicle_id])
    @category = Category.find(params[:category_id])
    @comment = @category.comments.new
  end

  # create
  def create
    @vehicle = Vehicle.find(params[:vehicle_id])
    @category = Category.find(params[:category_id])
    @comment = @category.comments.create(comment_params)
    redirect_to @comment
  end

  #show
  def show
    @comment = comment.find(params[:id])
  end

  # edit
  def edit
    @vehicle = Vehicle.find(params[:vehicle_id])
    @category = Category.find(params[:category_id])
    @comment = comment.find(params[:id])
  end

  # update
  def update
    @comment = category.find(params[:id])
    @comment.update(comment_params)
    redirect_to @comment
  end

  # destroy
  def destroy
    @comment = comment.find(params[:id])
    @comment.destroy
    redirect_to comment_path
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :album, :preview_url, :artist_id)
  end
end
