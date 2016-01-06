# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

futurama = Video.create(
  title: "Futurama",
  description: "A famous cartoon about future",
  thumbnail_url: "/tmp/futurama.jpg",
  cover_img_url: "/tmp/monk_large.jpg" )

house_of_cards = Video.create(
  title: "House of Cards",
  description: "Story about Dirty Politician, Frank Underwood, and his rise to power.",
  thumbnail_url: "/tmp/house_of_cards.jpg",
  cover_img_url: "/tmp/monk_large.jpg" )

man_in_the_high_castle = Video.create(
  title: "Man in High Castle",
  description: "Series based on novel about an alternate world where Axis power won WWII",
  thumbnail_url: "/tmp/man_in_high_castle.jpg",
  cover_img_url: "/tmp/monk_large.jpg" )

comedy = Category.create(name: "Comedy")
drama = Category.create(name: "Drama")

comedy.videos << futurama
drama.videos << house_of_cards
drama.videos << man_in_the_high_castle