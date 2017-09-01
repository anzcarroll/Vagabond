class CitiesController < ApplicationController
  #City index page (find all cities to loop through the Carousal)
  def index
    @cities = City.all
  end
  #City show page to show image of city, and loop through every post in that city
  def show
    @city = City.find params[:id]
    @posts = @city.posts.order(created_at: :desc)
  end
end
