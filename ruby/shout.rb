# Modules
#  (1) Use to compartmentalize set of methods or common behaviors that doesn't particular belong to a specific class
#  (2) Two Main use:
#      Compartmentalize - prevent clutter and conflicts with other codes. Call by using the syntax SomeModule.some_method <= this way is also known as namespacing
#      Mixins - can be 'mixed in' to class to give classes more functionality. Think as an extension or toolbelt that can be reused.
#  (3) To use modules, if its not auto-loaded like "Math", you will need to loan it in file/program by using require 'Module' or require_relative 'Module'
#  (4) UUID = Universal Unique Identifier - a randomly generated 128-bit # used to identify something, said to have .000006 change of being the same.
#  E.g.  require 'SecureRandom'
#        SecureRandom.uuid or SecureRandom.base64 to generate passwords
#  Math module is already loaded

#  SomeModule.singleton_methods = will output all the methods that require you to call with SomeModule.some_methods

#  Standalone Modules = require you to use self keyword for its methods

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    puts "YAAAAAAASSSSSS!"
    words + "!!!!!!!!!!!!!!!!!!!!" + " :)"
  end
end

puts Shout.yell_angrily("Why am I so hungry")

puts Shout.yell_happily("I GOT IT")