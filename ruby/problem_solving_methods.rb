# Release 0: Implement a Simple Search
puts 'Release 0: Implement a Simple Search'
puts
# Write a method that takes an array of integers and an integer to search for. The method should return the index of the item, or nil if the integer is not present in the array. Don't use built-in array methods like .index. You are allowed to use .length and .each.

# Here's an example of how we might use your method (assuming you call it search_array):

# input: array of integers
# output: return index 

# initiate search_array method, takes two params (array and an integer to search for)
def search_array(array, query)
  # variable to store result
  result = nil
  
  # find length of array and store it to a variable length
  length = array.length
  
  # iterate through array
  for index in 0..length
    # access each data using its index and compare if it matches desired integer
    if array[index] == query
      result = index  # if match set it to result
    end
  end

  # return result
  result
end

arr = [42, 89, 23, 1]
p search_array(arr, 1) == 3
# => 3
p search_array(arr, 29) == nil
# => nil



# Release 1: Calculate Fibonacci Numbers
puts
puts 'Release 1: Calculate Fibonacci Numbers'
puts
# The concept of Fibonacci numbers is pretty simple: you start off with a 0 and a 1, and keep adding numbers onto the list by adding the previous two. With that in mind, an array of the first six Fibonacci terms would be [0,1,1,2,3,5]. Each number in the array is the sum of the previous two numbers, except for the 0 and the 1, which we started out with.

# (Note that some Fibonacci sequences start out with two 1s instead. Don't let that confuse you.)

# DO THE THING
# Add a method to your file that takes a number of Fibonacci terms to generate and returns an array of the terms. For example, fib(6) would return [0,1,1,2,3,5]. Your method should work for a large number of terms. To verify your work: the last number in the array generated by fib(100) will be 218922995834555169026. (How can you verify this without having to compare this huge number manually? Be smart with your driver code!)

# define a method fib that takes one param for the number of fib to calculate
def fib(terms)
  # make sure its not an invalid entry
  if terms < 1
    return 'Invalid Entry, please enter an integer greater than 1'
  end
  # initiate a result to declare a blank array
  result = []
  # for loop that loop based on the terms
  for index in 0...terms
    if index == 0  # if index is 0 then push 0 to array
      result.push(index)
    elsif index == 1 # if index is 1 then push 1 to array
      result.push(index)
    else # else add previous two numbers
      first_prev_num = result[index-1]
      second_prev_num = result[index-2]
      result.push(first_prev_num + second_prev_num)
    end
  end
  # return result
  result
end

# test case
p fib(6) == [0,1,1,2,3,5]
p fib(100)[-1] == 218922995834555169026


# Release 2: Sort an Array
puts
puts 'Release 2: Sort an Array - Merge Sort'
puts
# Ruby's built-in sorting methods will sort an array for you, but understanding how these methods work can help you understand how programmers tackle a problem. This is really more of a "research on your own" challenge in disguise -- understanding the algorithm is usually the more challenging part, rather than actually writing the code for it.

# DO THE THING
# Choose a simple sorting algorithm to learn about. Bubble sort or insertion sort are good ones for beginners, but you're welcome to be more adventurous.
# Form a conceptual understanding of how the algorithm works. What helps you grasp it? Do visualizations help? How can you find the right materials for yourself?
# Notice your emotional state as you tackle this algorithm: do you feel frustrated, underqualified, stupid, or overwhelmed? Or is it more like excitement and curiosity? How do you think these feelings affect your ability to learn?

# Pseudocode a sorting method that takes an array of integers and uses a sorting algorithm. The method should return a sorted version of the array. Your pseudocode should not be Ruby-specific.
# Implement the sorting method in Ruby.

# Implementing Merge Sort
# Divide and conquer

def merge_sort int_array
  # Step 1 Divide
    # figure out half point
    length = int_array.length
    half_point = length / 2
    # if array length equals to 1
    if length <= 1
      return int_array
    else
    # shift data to left array variable  up to half point
    left_array = merge_sort(int_array[0...half_point])
    # shift data to right array variable from half point to length of array
    right_array = merge_sort(int_array[half_point..length])
    end
    
    # puts 'left_array'
    # p left_array
    # puts 'right array'
    # p right_array
    
  # Step 2 Sort and Merge
    sorted_array = []
    # for loop stop when iterator reaches the sum of the length of left_array and right_array
    for i in 0...(left_array.length + right_array.length)
      # if left array length is 0
      if left_array.length == 0
        # shift data from right array into sorted_array variable
        sorted_array.push(right_array.shift)
      # elsif right array length is 0
      elsif right_array.length == 0
        # shift data from left array into sorted_array variable
        sorted_array.push(left_array.shift)
      # elsif left array is less than right array
      elsif left_array[0] < right_array[0]
        # shift data from left array into sorted_array variable
        sorted_array.push(left_array.shift)
      # else 
      else
        # shift data from right array into sorted_array variabl 
        sorted_array.push(right_array.shift)
      # end if statement
      end
      # puts 'debug sorted_array'
      # p sorted_array
    # end loop 
    end
  
  # Return merged array
   sorted_array
# end method
end

# test data
p merge_sort([108,15,50,4,8,42,23,16]) == [4, 8, 15, 16, 23, 42, 50, 108]
# [4, 8, 15, 16, 23, 42, 50, 108]
p merge_sort([150, 5, 65, 9, 87, 208, 99, 30]) == [5, 9, 30, 65, 87, 99, 150, 208]
# [4, 8, 15, 16, 23, 42, 50, 108]