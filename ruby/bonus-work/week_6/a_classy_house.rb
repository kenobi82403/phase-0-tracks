# The video below demonstrates the following skills:

# Defining classes
# Setting instance attributes
# Using attr_accessor and attr_reader
# Writing instance methods
# Spreading classes across multiple files (relatively new concept)
# We use some classes inside other classes to demonstrate that Ruby doesn't care whether you're interacting with an integer, a string, or an instance of a Room class. All are objects, and all can be passed in as arguments to methods, interacted with inside an .each loop, and so on. You have to keep track of a variable's data type so you know what methods you can call on that variable, but Ruby will happily let you store any object in any variable or method argument that you like.

# Build a house out of classes
# Design

# HOUSE CLASS
# Attributes:
# - rooms (a collection of Room Instances)
# Methods:
# - getter for rooms
# - add_room(only allows up to 10 rooms)
# - square_footage (adds up the house's square footage and returns it as an integer)
# - total_value (adds up value of items in all rooms)
# - to_s override

# ROOM CLASS
# Attributes:
# - name
# - width
# - length
# - items (a collection of Item instances)
# Methods:
# - getter for items, name, width, length
# - setter for items, name
# - total_value (adds up prices of items)
# - to_s override

# ITEM CLASS
# Attributes:
# - name
# - color
# - price 
# Methods:
# - getters for color, price, name
# - to_s override

