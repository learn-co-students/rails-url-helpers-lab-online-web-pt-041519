# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

first = "Test"
last = "Tester"

for counter in 1..10 do
  Student.create(first_name: first + " #{counter}", last_name: last + " #{counter}")
end