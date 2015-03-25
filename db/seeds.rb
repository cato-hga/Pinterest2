# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.destroy_all
Board.destroy_all
Pin.destroy_all



5.times do

  user = User.create!(name: Faker::Name.name,
  email: Faker::Internet.email,
  remote_avatar_url: Faker::Avatar.image)

  4.times do

    board = Board.create!(name: Faker::Name.name,
    user: user  )

    3.times do

      pin = Pin.create!(title: Faker::Name.title,
      description: Faker::Hacker.say_something_smart,
      board: board, user:user,
      url: Faker::Internet.url('lorempixel.com/80/80/sports'),
      remote_pin_image_url: "http://lorempixel.com/80/80/sports/")

    end
  end
end
