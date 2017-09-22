module CitiesHelper
  def get_city_from_name(name)
    City.where('lower(location) = ?', name.downcase.gsub('-',' ')).first
  end
end
