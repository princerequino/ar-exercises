require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

# We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure, you'll find that it has a `store_id` (integer) column. This is a column that identifies which store each employee belongs to. It points to the `id` (integer) column of their store.

# Let's tell Active Record that these two tables are in fact related via the `store_id` column.

# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
# 3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`
# 4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the `@store#` instance variables that you defined in previous exercises. Create a bunch under `@store1` (Burnaby) and `@store2` (Richmond). Eg: `@store1.employees.create(...)`.

# bundle exec ruby exercises/exercise_6.rb

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jackson", last_name: "Ville", hourly_rate: 10)
@store1.employees.create(first_name: "Darth", last_name: "Vader", hourly_rate: 20)
@store1.employees.create(first_name: "Kuan", last_name: "Yew", hourly_rate: 30)
@store1.employees.create(first_name: "Ishraf", last_name: "Patel", hourly_rate: 40)

@store2.employees.create(first_name: "Brendan", last_name: "Fraser", hourly_rate: 100)
@store2.employees.create(first_name: "Carrie", last_name: "Overwood", hourly_rate: 200)
@store2.employees.create(first_name: "Bruce", last_name: "Almighty", hourly_rate: 300)
@store2.employees.create(first_name: "Judas", last_name: "Priest", hourly_rate: 400)
@store2.employees.create(first_name: "Coffee", last_name: "Milo", hourly_rate: 500)

puts "Total Burnaby Employees: #{@store1.employees.count}"
puts "Total Richmond Employees: #{@store2.employees.count}"