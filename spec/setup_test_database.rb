require 'pg'

def truncate_database
  conn = PG.connect( dbname: 'bookmark_manager_test')
  conn.exec('TRUNCATE bookmarks')
end