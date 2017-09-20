class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :location
      t.string :date_traveled
      t.string :decription

      t.timestamps
    end
  end
end
