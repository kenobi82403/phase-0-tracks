# require gems
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old....."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
# get '/students' do
#   students = db.execute("SELECT * FROM students")
#   response = ""
#   students.each do |student|
#     response << "ID: #{student['id']}<br>"
#     response << "Name: #{student['name']}<br>"
#     response << "Age: #{student['age']}<br>"
#     response << "Campus: #{student['campus']}<br><br>"
#   end
#   response
# end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a GET route that display a make believe address

get '/contact' do 
  '1234 Times Square<br>New York, NY 10036'
end

# A /great_job route that can take a person's name as a query parameter (not a route parameter) and say "Good job, [person's name]!". If the query parameter is not present, the route simply says "Good job!"
get '/great_job' do
  person_name = params[:name]
  if(person_name)
    "Good job, #{person_name}!"
  else
    "Good job!"
  end
end

# A route that uses route parameters to add two numbers and respond with the result. The data types are tricky here -- when will the data need to be (or arrive as) a string?
get '/:num1/plus/:num2' do 
  num1 = params[:num1]
  num2 = params[:num2]
  product = num1.to_i + num2.to_i
  "#{num1} + #{num2} = #{product}"
end

# Optional bonus: Make a route that allows the user to search the database in some way -- maybe for students who have a certain first name, or some other attribute. If you like, you can simply modify the home page to take a query parameter, and filter the students displayed if a query parameter is present.
get '/students' do
  s_name = params[:name]
  age = params[:age]
  campus = params[:campus]
  response = ""

  if(s_name)
    query = "%#{s_name}%"
    students = db.execute("SELECT * FROM students WHERE name LIKE ?", [query])
  elsif(age)
    query = "%#{age}%"
    students = db.execute("SELECT * FROM students WHERE age >= ?", [age.to_i])
  elsif(campus)    
    query = "%#{campus}%"
    students = db.execute("SELECT * FROM students WHERE campus LIKE ?", [query])    
  else
    students = db.execute("SELECT * FROM students")
  end

  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end

  response
end

# Research
# Is Sinatra the only web app library in Ruby? What are some others?  No, there are many. other framework includes Ruby on Rails (full stack Macro Framework), Volt, Cramp, Lattice, Angelo, Lotus, Pakyow, and Ramaze.   

# Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others? postgreSQL and Active Record.

# What is meant by the term web stack? A webstack describes the collection of software required for web development. At a minimum, a Web stack contains an operating system(OS), a programming language, a database software, and a web server.