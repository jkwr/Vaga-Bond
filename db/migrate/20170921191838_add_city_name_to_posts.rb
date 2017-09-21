class AddCityNameToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :city_name, :string
  end
end
