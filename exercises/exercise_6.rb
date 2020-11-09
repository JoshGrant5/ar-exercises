require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "J", last_name: "G", hourly_rate: 60)

@store2.employees.create(first_name: "K", last_name: "V", hourly_rate: 60)

@store2.employees.create(first_name: "H", last_name: "M", hourly_rate: 60)

@store2.employees.create(first_name: "L", last_name: "P", hourly_rate: 60)

@store1.employees.create(first_name: "Q", last_name: "C", hourly_rate: 60)

@store1.employees.create(first_name: "M", last_name: "N", hourly_rate: 60)