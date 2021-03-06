require 'sqlite3'
# require 'faker'


db = SQLite3::Database.new("books.db")
db.results_as_hash = true


create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS books(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    isbn VARCHAR(13)
  )
SQL

db.execute(create_table_cmd)

# add a test book
# db.execute("INSERT INTO books (name, isbn) VALUES ('Hamlet', 9781420922530)")


def create_books(db, name, isbn)
  db.execute("INSERT INTO books (name, isbn) VALUES (?, ?)", [name, isbn])
end

puts "How many books would you like to input:"

length = gets.chomp.to_i

length.to_i.times do
	puts "Enter book's name:"
	name = gets.chomp
	puts "Enter its 13 digit isbn number with no dashes:"
	isbn = gets.chomp
  create_books(db, name, isbn)
end

books = db.execute("SELECT * FROM books")

# books.each do |books|
#  puts "#{books['name']}, ISBN number #{books['isbn']}, is now available."
# end

# requests portion 

puts "Here's all of the books that are available:"

books.each do |books|
	puts "Name: #{books['name']}"
	puts "ISBN: #{books['isbn']}"
	puts ""
end 

length.times do

	puts "You can make #{length} requests for books."
	puts ""
	puts "What book name would you like to request?"
	request_name = gets.chomp

	books.each do |books|
		if request_name == books['name'] 
			puts "Great we have #{books['name']}!"
			db.execute("DELETE FROM books WHERE name='#{books['name']}';")
		else 
		end 
	end

	length = length - 1 
end 

# need to update list
books = db.execute("SELECT * FROM books")

puts "Here's all of the books that are available now:"

books.each do |books|
	puts "Name: #{books['name']}"
	puts "ISBN: #{books['isbn']}"
	puts ""
end 




