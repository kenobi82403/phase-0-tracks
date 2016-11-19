#Release 1

# Write a program that asks the new employee the following questions

# What is your name?
puts "What is your name?"
employee_name = gets.chomp

# How old are you?
puts "How old are you?"
employee_age = gets.chomp

# What year were you born?
puts "What year were you born?"
year_of_birth = gets.chomp

# Our company cafeteria serves garlic bread. Should we order some for you?
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
order_garlic = gets.chomp

# Would you like to enroll in the company's health insurance?
puts "Would you like to enroll in the company's health insurance?"
need_insurance = gets.chomp

puts
puts "Employee Name: #{employee_name}"
puts "Employee Age: #{employee_age}"
puts "Year of Birth: #{year_of_birth}"
puts "Order Garlic? #{order_garlic}"
puts "Insurance? #{need_insurance}"