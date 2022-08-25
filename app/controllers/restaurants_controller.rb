class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to
  end





  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category, :reviews)
  end
end
