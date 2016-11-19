#Release 1

# Write a program that asks the new employee the following questions

def process_new_employee (employee_num)
  puts "============================================="
  puts "Employee Number: #{employee_num}"
  puts
  # What is your name?
  puts "What is your name?"
  employee_name = gets.chomp

  # How old are you?
  puts "How old are you?"
  employee_age = gets.chomp

  # What year were you born?
  puts "What year were you born?"
  year_of_birth = gets.chomp

    # Test if vampire age match
    calculate_age = Time.new.to_s[0..3].to_i - year_of_birth.to_i
    age_match = (employee_age.to_i === calculate_age)

  # Our company cafeteria serves garlic bread. Should we order some for you?
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
  order_garlic = gets.chomp.downcase

    if order_garlic === "yes"
      order_garlic = true
    elsif order_garlic === "no"
      order_garlic = false 
    end

  # Would you like to enroll in the company's health insurance?
  puts "Would you like to enroll in the company's health insurance? (yes/no)"
  need_insurance = gets.chomp.downcase

    if need_insurance === "yes"
      need_insurance = true
    elsif need_insurance === "no"
      need_insurance = false 
    end

  # Release 4: Check for Suspicious Allergies
  employee_done = false
  employee_allergies = ""
  until employee_done
    puts "Please enter your allergies one at a time. Once you are done, type 'done' to exit"
    
    employee_allergies_input = gets.chomp
   
    if employee_allergies_input === "done"
      employee_done = true
    elsif employee_allergies_input === "sunshine"
      puts
      return puts "Result: Probably a vampire!"
    elsif employee_allergies === ""
      employee_allergies += employee_allergies_input
    else
      employee_allergies += ", #{employee_allergies_input}"
    end
  end
  
  p employee_allergies


  puts
  puts "Employee Name: #{employee_name}"
  puts "Employee Age: #{employee_age}"
  puts "Year of Birth: #{year_of_birth}"
  puts "Order Garlic? #{order_garlic}"
  puts "Insurance? #{need_insurance}"
  puts "Allergies: #{employee_allergies}"
  # Release 2 Detection Logic

  # Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
  if employee_name === "Drake Cula" || employee_name === "Tu Fang"
    result = "Definitely a vampire"

  # If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
  elsif age_match === false && 
          order_garlic === false && 
            need_insurance === false
    result = "Almost certainly a vampire"

  # If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
  elsif age_match === false && 
          (order_garlic === false || need_insurance === false)
    result = "Probably a vampire"

  # If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
  elsif age_match && 
      (order_garlic || need_insurance)
    result = "Probably not a vampire"

  # Otherwise, print “Results inconclusive.”
  else
    result = "Results inconclusive"
  end

  puts
  puts "Result: #{result}"
  puts
end

# Release 3: Process Multiple Employees

puts "How many employees will be processed?"
num_of_employee = gets.chomp.to_i

for i in 1..num_of_employee
  process_new_employee(i)
end

# Release 4: Check for Suspicious Allergies

# Release 5: Plot Twist
puts
puts "***************************************************************"
puts
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."