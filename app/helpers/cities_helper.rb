module CitiesHelper

  # returns the City object based on dashed name
  def get_city_from_name(name)
    City.where('lower(location) = ?', name.downcase.gsub('-',' ')).first
  end

  # returns the dashed name from a City object
  def get_name_from_city(city)
    city.location.downcase.gsub(' ','-')
  end

  # returns the dashed show path for a City object
  def get_path_from_city(city)
  	"/cities/#{get_name_from_city(city)}"
  end
end
