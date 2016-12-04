# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     puts "YAAAAAAASSSSSS!"
#     words + "!!!!!!!!!!!!!!!!!!!!" + " :)"
#   end
# end

# puts Shout.yell_angrily("Why am I so hungry")

# puts Shout.yell_happily("I GOT IT")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!!!!!!!!!!!!!!!!!" + " :)"
  end
end

class Mom
  include Shout
end

class Dad
  include Shout
end

sarah = Mom.new
puts sarah.yell_angrily("I want food")

joe = Dad.new
puts joe.yell_happily("Here you go honey")