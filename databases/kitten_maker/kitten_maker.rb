# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3' # for sql database
require 'faker'  # help create fake datas

# create SQLite3 database
db = SQLite3::Database.new("kittens.db")
db.results_as_hash = true # modifies the default result from giving an array to a hash

# learn about fancy string delimiters - another way of writing a string without the quotation mark. The SQL you see below is a placeholder which can be substitute for any value. Best practice is to use a word that won't be used inside the string delimiters.
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion
def create_kitten(db, name, age)
  # BEWARE OF SQL INJECTION, a security attack where hacker inject bad data or code into your database (dropping databases etc.) This usually happens if you allow them to insert SQL commands without sterilizing their inputs
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end


10000.times do
  create_kitten(db, Faker::Name.name, 0)
end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

