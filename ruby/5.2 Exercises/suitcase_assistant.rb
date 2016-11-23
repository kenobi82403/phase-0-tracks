puts "Welcome to the Suitcase Assistant!"

puts "Enter an item:"
item_1 = gets.chomp

puts "Enter an item:"
item_2 = gets.chomp

puts "Enter an item:"
item_3 = gets.chomp

puts "Here's your packing list:"
puts item_1
puts item_2 
puts item_3

puts "Safe Travels!"

numbers = []

numbers << 4
# => [4]

numbers << 5
# => [4, 5]

numbers << 8
# => [4, 5, 8]

numbers << 8
# => [4, 5, 8, 8]

numbers.delete(8) # Delete all instances of 8
# => 8 
# => [4, 5]
# or 
# numbers.delete_at(2) # Delete value at the index
# => 8
# => [4, 5, 8]