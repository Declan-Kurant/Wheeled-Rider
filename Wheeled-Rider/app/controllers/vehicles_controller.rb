class VehiclesController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @vehicles = Vehicle.all
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.create(vehicle_params.merge(user: current_user))
    redirect_to vehicle_path(@vehicle)
  end

  def show
    @vehicle = Vehicle.find(params[:id])
    @categories = Category.where(vehicle_id: params[:id])
    # @categories = Category.all
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])
    @vehicle.update(vehicle_params)
    redirect_to vehicle_path(@vehicle)
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy
    redirect_to "/vehicles/"
  end

  private
  def vehicle_params
    params.require(:vehicle).permit(:name, :img_url)
  end
end
