class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @best_restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
