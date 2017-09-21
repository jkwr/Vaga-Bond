# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  # t.string "email"
  #   t.string "first_name"
  #   t.string "last_name"
  #   t.string "password_digest"
  #   t.string "prof_image"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.string "hometown"

City.create({location: "San Francisco", date_traveled: "11/11/2016", description: "Golden Gate"})
City.create({location: "Gibraltar", date_traveled: "12/11/2016", description: "Big Mtn"})
City.create({location: "London", date_traveled: "1/11/2017", description: "beautiful!"})
Post.create({title: "SF Zoo", description: "this is a great place to visit"})

