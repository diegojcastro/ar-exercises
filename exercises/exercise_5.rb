require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total = Store.sum(:annual_revenue)
num_stores = Store.count
puts "Total revenue is #{total}"
puts "Average for all stores is #{total/num_stores}"
puts ""
stores_for_5 = Store.where("annual_revenue > 1000000").count
puts "Stores that are generating $1M or more in annual sales: #{stores_for_5}"