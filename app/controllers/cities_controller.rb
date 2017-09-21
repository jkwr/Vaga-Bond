require 'ostruct'
class CitiesController < ApplicationController
  def index
    city_name = params[:city_name]
    case city_name
    when 'sanfrancisco'
      @city = OpenStruct.new(:name => "San Francisco", :background_img => "sanfrancisco.png")
    when 'london'
      @city = OpenStruct.new(:name => "London", :background_img => "london.png")
    when 'gibraltar'
      @city = OpenStruct.new(:name => "Gibraltar", :background_img => "gibraltar.png")
    else
    end
    @posts = Post.where(city_name: city_name)
  end
  def show

  end

end
