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

# create new Puppy class
chiwawa = Puppy.new

p chiwawa.fetch("bone") 
p chiwawa.speak(2)
p chiwawa.roll_over
p chiwawa.dog_years(3)
p chiwawa.lay_down

# create Food class
class Food

    def initialize 
        'Food baby!'
    end

    def smell 
        'I hope it smells nice'
    end

    def taste 
        'I hope it tastes good'
    end

end

# initiate an empty array
arr_of_instances = []

# use times iterator and push each new instances of Food into the array
50.times { |i| arr_of_instances << Food.new }

# debug making sure instances are created
p arr_of_instances

# debug 
arr_of_instances.each do |i|
    p i.taste
    p i.smell
end