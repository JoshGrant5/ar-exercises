require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

employee = Employee.create(store_id: 2, first_name: 'Jerry', last_name: 'Gooper', hourly_rate: 60)

puts employee.password