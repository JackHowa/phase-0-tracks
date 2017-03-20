# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("books.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS books(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    isbn VARCHAR(13)
  )
SQL

# create a books table (if it's not there already)
db.execute(create_table_cmd)

# add a test book
# db.execute("INSERT INTO books (name, isbn) VALUES ('Hamlet', 9781420922530)")


def create_books(db, name, isbn)
  db.execute("INSERT INTO books (name, isbn) VALUES (?, ?)", [name, isbn])
end

puts "How many books would you like to input:"

length = gets.chomp

length.to_i.times do
	puts "Enter book's name:"
	name = gets.chomp
	puts "Enter its 13 digit isbn number with no dashes:"
	isbn = gets.chomp
  create_books(db, name, isbn)
end

# explore ORM by retrieving data
books = db.execute("SELECT * FROM books")
books.each do |books|
 puts "#{books['name']} is serial number #{books['isbn']}"
end

