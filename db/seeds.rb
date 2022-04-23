# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Car.destroy_all
User.destroy_all

user1 = User.create!(email: "paul.james@gmail.com", name: "JAMES", firstname: "Paul", password: "123456", password_confirmation:"123456")
user2 = User.create!(email: "alice.james@gmail.com", name: "JAMES", firstname: "Paul", password: "123456", password_confirmation:"123456")
user3 = User.create!(email: "vincent.james@gmail.com", name: "JAMES", firstname: "Paul", password: "123456", password_confirmation:"123456")
user4 = User.create!(email: "jef.james@gmail.com", name: "JAMES", firstname: "Paul", password: "123456", password_confirmation:"123456")
user5 = User.create!(email: "mh.james@gmail.com", name: "JAMES", firstname: "Paul", password: "123456", password_confirmation:"123456")

car1 = Car.create!(brand: "Triumph", model: "Spitfire MK2", url_car: "triumph.jpg", price_per_day: 100)
car2 = Car.create!(brand: "Peugeot", model: "205 GTI", url_car: "205.jpg", price_per_day: 80)
car3 = Car.create!(brand: "Aston Martin", model: "DB9", url_car: "DB9.jpg", price_per_day: 400)
