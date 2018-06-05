require 'pg'

p "Setting up test database..."
connection = PG.connect(dbname: 'bookmark_manager_test')
connection.exec("TRUNCATE bookmarks;")
#clears the bookmarks from the table
#must be run first, before the rspec
