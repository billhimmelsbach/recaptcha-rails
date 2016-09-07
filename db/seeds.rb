Switt.destroy_all

p "Destroyed all the Switts"

SWITTS = [
  {
    name: "Turbo Switt",
    super_power: "Faster than the normal Switt"
  },
  {
    name: "CEO Switt",
    super_power: "Able to delegate tasks, looks good in a button up"
  }
]

p Switt.create(SWITTS)
s = Switt.all
puts "Seeded #{s.count} switts."

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
