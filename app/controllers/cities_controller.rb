
class CitiesController < ApplicationController

	def index
		@cities = City.all
	end

	def create
		@cities = get_city_from_name(params[:city_name])
		
	end
	def show
		@city = get_city_from_name(params[:city_name])
		@posts = @city.posts
	end

end
