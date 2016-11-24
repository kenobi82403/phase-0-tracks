suitcase_items = []

puts "Welcome to the Suitcase Assistant!"

loop do
  puts "Enter an item (or type 'exit'):"
  input = gets.chomp
  break if input == 'exit'
  suitcase_items << input
end

puts "Here's your packing list:"
count = 1
suitcase_items.each do |items|
  puts count.to_s + ": " + items
  count += 1
end
puts 
puts "Safe Travels!"


# ==================================

# some array methods
# arr.length
# arr.first
# arr.last
# arr[-1] 

# numbers = []

# numbers << 4
# => [4]

# numbers << 5
# => [4, 5]

# numbers << 8
# => [4, 5, 8]

# numbers << 8
# => [4, 5, 8, 8]

# numbers.delete(8) # Delete all instances of 8
# => 8 
# => [4, 5]
# or 
# numbers.delete_at(2) # Delete value at the index
# => 8
# => [4, 5, 8]