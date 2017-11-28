class CategoriesController < ApplicationController
  # index
  def index
    @categories = Category.all
  end

  # new
  def new
    @vehicle = Vehicle.find(params[:vehicle_id])
    @category = @vehicle.categories.new
  end

  # create
  def create
    @vehicle = Vehicle.find(params[:vehicle_id])
    @category = @vehicle.categories.create(category_params)
    redirect_to @category
  end

  #show
  def show
    @category = category.find(params[:id])
  end

  # edit
  def edit
    @vehicle = Vehicle.find(params[:vehicle_id])
    @category = category.find(params[:id])
  end

  # update
  def update
    @category = category.find(params[:id])
    @category.update(category_params)
    redirect_to @category
  end

  # destroy
  def destroy
    @category = category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private
  def category_params
    params.require(:category).permit(:title, :author, :num_replies, :last_reply)
  end
end
