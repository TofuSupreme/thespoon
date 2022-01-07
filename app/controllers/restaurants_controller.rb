class RestaurantsController < ApplicationController
  def index
    # see all restaurants
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
  end

  def destroy
  end
  # This is a safety feature or 'strong params'. This enables that whatever is being passed from the restaurant form does not get mutated by a hacker. ONLY the required values gets passed. NOTHING else.
  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
