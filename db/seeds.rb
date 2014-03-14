# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Vacation.create([
  {
    name: "Train to Scotland",
    slug: "william-wallace",
    map_link: "https://www.google.com/maps/place/EDINBURGH"
  }, {
    name: "Skiing in the Alps",
    slug: "vo-ist-osterreich",
    map_link: "https://www.google.com/maps/place/Heiligenblut/@47.0363032,12.851572,13z/data=!4m2!3m1!1s0x47776acfa2ce7fd7:0x8d3186646f07359e"
  }, {
    name: "Cambridge and Brighton",
    slug: "keep-it-english",
    map_link: "https://www.google.com/maps/place/Cambridge/@52.1988421,0.1199872,13z/data=!3m1!4b1!4m2!3m1!1s0x47d85d89f32a012d:0x63a320e1a35e3d21"
  }, {
    name: "France with Gerry",
    slug: "quoi",
    map_link: "https://www.google.com/maps/place/Bastille/@48.853082,2.369002,17z/data=!3m1!4b1!4m2!3m1!1s0x0:0x704effdecb664a98"
  }
])
