# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

comedy = Category.create(name: "Comedy")
drama = Category.create(name: "Drama")

Video.create(
  title: "Futurama",
  description: "A famous cartoon about future",
  category: comedy,
  thumbnail_url: "/tmp/futurama.jpg",
  cover_img_url: "/tmp/monk_large.jpg" )

Video.create(
  title: "House of Cards",
  description: "Story about Dirty Politician, Frank Underwood, and his rise to power.",
  category: drama,
  thumbnail_url: "/tmp/house_of_cards.jpg",
  cover_img_url: "/tmp/monk_large.jpg" )

Video.create(
  title: "Man in High Castle",
  description: "Series based on novel about an alternate world where Axis power won WWII",
  category: drama,
  thumbnail_url: "/tmp/man_in_high_castle.jpg",
  cover_img_url: "/tmp/monk_large.jpg" )

Video.create(
  title: "House of Cards",
  description: "Story about Dirty Politician, Frank Underwood, and his rise to power.",
  category: drama,
  thumbnail_url: "/tmp/house_of_cards.jpg",
  cover_img_url: "/tmp/monk_large.jpg" )

Video.create(
  title: "Man in High Castle",
  description: "Series based on novel about an alternate world where Axis power won WWII",
  category: drama,
  thumbnail_url: "/tmp/man_in_high_castle.jpg",
  cover_img_url: "/tmp/monk_large.jpg" )

Video.create(
  title: "House of Cards",
  description: "Story about Dirty Politician, Frank Underwood, and his rise to power.",
  category: drama,
  thumbnail_url: "/tmp/house_of_cards.jpg",
  cover_img_url: "/tmp/monk_large.jpg" )

Video.create(
  title: "Man in High Castle",
  description: "Series based on novel about an alternate world where Axis power won WWII",
  category: drama,
  thumbnail_url: "/tmp/man_in_high_castle.jpg",
  cover_img_url: "/tmp/monk_large.jpg" )

Video.create(
  title: "House of Cards",
  description: "Story about Dirty Politician, Frank Underwood, and his rise to power.",
  category: drama,
  thumbnail_url: "/tmp/house_of_cards.jpg",
  cover_img_url: "/tmp/monk_large.jpg" )

Video.create(
  title: "Man in High Castle",
  description: "Series based on novel about an alternate world where Axis power won WWII",
  category: drama,
  thumbnail_url: "/tmp/man_in_high_castle.jpg",
  cover_img_url: "/tmp/monk_large.jpg" )


