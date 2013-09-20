class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find params[:id]
    @schedule = @restaurant.schedule
    @pizzas = @restaurant.pizzas
  end
end
