# Paired with Andrew McCrink"

class Puppy

    def initialize 
        p "initializing new puppy instance.."
    end

 def fetch(toy)
   puts "I brought back the #{toy}!"
   toy
 end

 def speak(i)
     "Woof!" *i
 end

 def roll_over
     "roll_over"
 end

 def dog_years(i)
     i*7
 end

 def lay_down 
     "Laying down"
 end


end

chiwawa = Puppy.new

p chiwawa.fetch("bone") 
p chiwawa.speak(2)
p chiwawa.roll_over
p chiwawa.dog_years(3)
p chiwawa.lay_down


class Food

    attr_accessor :name
    def initialize (name)
        @name = name
    end

    def smell 
        p 'I hope it smells nice'
    end

    def taste 
        p 'I hope it tastes good'
        
    end

end

instances_array = []

# 5.times { |i| instances_array.push(eval("food:i = Food.new")) }
50.times { |i| instances_array << Food.new('food' + i.to_s) }

p instances_array

# will research what this actually do.
p instances_array.map(&:name)

p instances_array[0].taste

instances_array.each do |instance|
    p instance.taste
    p instance.smell
end