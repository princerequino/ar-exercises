require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

# 1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
# 2. On the next line, also output the average annual revenue for all stores.
# 3. Output the number of stores that are generating $1M or more in annual sales. **Hint:** Chain together `where` and `size` (or `count`) Active Record methods.

# bundle exec ruby exercises/exercise_5.rb

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_rev      = Store.sum(:annual_revenue)
@total_stores   = Store.count
@store_over_mil = Store.where("annual_revenue > ?", 1000000).count

puts "Total revenue for all stores: $#{@total_rev}"
puts "Average Annual Revenue for all stores: $#{@total_rev / @total_stores}"
puts "Total stores making over $1M: #{@store_over_mil}"