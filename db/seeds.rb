# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
students = [
  {first_name: "Marissa", last_name: "Cooper" },
  {first_name: "Summer", last_name: "Roberts"},
  {first_name: "Seth", last_name: "Cohen"},
  {first_name: "Ryan", last_name: "Atwood"},
]

students.each { |s| Student.create!(s) }
