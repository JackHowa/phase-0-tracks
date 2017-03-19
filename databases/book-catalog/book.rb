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

db.execute(create_table_cmd)

db.execute("select * from books")
