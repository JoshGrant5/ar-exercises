require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
avg_revenue = Store.average(:annual_revenue)
high_sales = Store.where('annual_revenue > 1000000').count

puts "Total revenue:"
puts total_revenue

puts "Average revenue:"
puts avg_revenue

puts "# of stores generating $1M or more in annual sales:"
puts high_sales