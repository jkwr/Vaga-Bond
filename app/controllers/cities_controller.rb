class CitiesController < ApplicationController

	def index
		@cities = City.all
	end
	
	def create
		@cities = City.find(params[:id])
	end 

end
