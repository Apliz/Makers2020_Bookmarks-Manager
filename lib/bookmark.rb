require 'pg'

class Bookmark

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      conn = PG.connect( dbname: 'bookmark_manager_test' )  
    else
      conn = PG.connect( dbname: 'bookmark_manager' )
    end
    conn.exec('SELECT title FROM bookmarks;').map { |bookmark| bookmark['title'] }
  end

  def create(url, title)
    conn = PG.connect( dbname: 'bookmark_manager')
    id = conn.exec("SELECT id FROM bookmarks;").map { |id| id['id'] }.length + 1
    conn.exec("INSERT INTO bookmarks (id, title, url) VALUES (#{id}, '#{title}', '#{url}');")
  end

end