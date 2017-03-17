# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("pods.db")
data = "opml.csv"

# command to import csv
def create_kitten(db,data)
  db.execute(".mode csv
.import ? pods", [data])
end

# show 
db.execute("select * from pods;")
# count 
# db.execute("SELECT COUNT(title) FROM pods;")


# /Users/jackhowa/.rbenv/versions/2.4.0/lib/ruby/gems/2.4.0/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `initialize': no such table: pods (SQLite3::SQLException)
	# from /Users/jackhowa/.rbenv/versions/2.4.0/lib/ruby/gems/2.4.0/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `new'
	# from /Users/jackhowa/.rbenv/versions/2.4.0/lib/ruby/gems/2.4.0/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `prepare'
	# from /Users/jackhowa/.rbenv/versions/2.4.0/lib/ruby/gems/2.4.0/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:137:in `execute'
	# from pod_counter.rb:15:in `<main>'