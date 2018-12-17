# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all
Student.create([{ first_name: "Rick", last_name: "Sanchez", school_class_id: 1}, { first_name: "Morty", last_name: "Smith", school_class_id: 1 }, { first_name: "Yin", last_name: "Cat", school_class_id: 2}, { first_name: "Yang", last_name: "Cats", school_class_id: 2} ])
SchoolClass.destroy_all
SchoolClass.create([{title: "firstgrade", room_number:1}, {title: "secondgrade", room_number:2}] )
