# Release 0

# def fancy_message 
#   puts "This is before the awesome message"
#   yield("Yibin", "Kendy")
#   puts "this is after the awesome message"
# end

# fancy_message {|name1, name2| puts "#{name1} is pairing with #{name2}!"}

# Release 1

random_arr = [2, 3, 1, 6, 7]

fruit_color = {
  apple: "red",
  banana: "yellow",
  dragon: "red/green",
  pears: "brown",
  watermelon: "green"
}

random_arr.each do |number| 
  puts "There were #{number} clowns"
end 

fruit_color.each do |fruit, color| 
  puts "#{fruit.capitalize} has the color of #{color}!"
end

random_arr.map! do |number| 
  number.next + 5
end
p random_arr

