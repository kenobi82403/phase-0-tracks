# require gems
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

# config to serve static resources in the static folder
set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  sname = params['name']
  campus = params['campus']
  age = params['age'].to_i

  db.execute("INSERT INTO students (name, campus, age) 
              VALUES (?,?,?)", [sname, campus, age])

  redirect '/'
end

# add static resources

# card route
get '/cards' do
  s_name = params[:name]
  age = params[:age]
  campus = params[:campus]
  response = ""

  if(s_name != nil)
    query = "%#{s_name}%"
    @students = db.execute("SELECT * FROM students WHERE name LIKE ?", [query])
    puts "I'm in name #{query}"
  elsif(age != nil)
    query = "%#{age}%"
    @students = db.execute("SELECT * FROM students WHERE age >= ?", [age.to_i])
    puts "I'm in age #{query}"
  elsif(campus != nil)    
    query = "%#{campus}%"
    @students = db.execute("SELECT * FROM students WHERE campus LIKE ?", [query])    
    puts "I'm in campus #{query}"
  else
    @students = db.execute("SELECT * FROM students")
  end

  erb :cards
end

post '/cards' do 
  s_name = params[:name] 
  age = params[:age] 
  campus = params[:campus] 
  response = ''

  if(s_name != '')
    if(response == '')
      response << '?'
    end
      response << "name=#{s_name}"
  end 

  if(age != '')
    if(response == '')
      response << '?'
    else
      response << '&'
    end
    response << "age=#{age}"
  end

  if(campus != '')
    if(response == '')
      response << '?'
    else
      response << '&'
    end
    response << "campus=#{campus}"
  end
  
  puts response
  redirect '/cards' + response
end