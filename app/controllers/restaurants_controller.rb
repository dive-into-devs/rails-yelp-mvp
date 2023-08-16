class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(premited_params)
    @restaurant.save
    # raise
    redirect_to restaurants_path
  end



  private

  def premited_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
