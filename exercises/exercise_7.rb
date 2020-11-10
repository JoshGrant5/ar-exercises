require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
name = gets.chomp

store = Store.create(name: name, annual_revenue: -50, mens_apparel: true, womens_apparel: false) # => annual_revenue error
puts store.errors[:annual_revenue]

store = Store.create(name: name, annual_revenue: 190000, mens_apparel: true, womens_apparel: false) # => name error on input
puts store.errors[:name]

store = Store.create(name: name, annual_revenue: 200000, mens_apparel: false, womens_apparel: false) # => annual_revenue error
puts store.errors[:mens_apparel]

employee = Employee.create(store_id: '', first_name: 'J', last_name: 'G', hourly_rate: 60) # => store_id error
puts employee.errors[:store_id]

employee = Employee.create(store_id: 1, first_name: '', last_name: 'G', hourly_rate: 60) # => first_name error
puts employee.errors[:first_name]

employee = Employee.create(store_id: 1, first_name: 'J', last_name: '', hourly_rate: 60) # => last_name error
puts employee.errors[:last_name]

employee = Employee.create(store_id: 1, first_name: 'J', last_name: 'G', hourly_rate:30) # => hourly_rate error
puts employee.errors[:hourly_rate]