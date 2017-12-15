class CommentsController < ApplicationController
  # index
  def index
    @comments = Comment.all
  end # You can get rid of your index method and index views since its not being used.  

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
    @comment = Category.find(params[:id])
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
    params.require(:comment).permit(:contet, :author, :tier_of_reply, :time_posted, :category)
  end
end

# Delete commented method names
