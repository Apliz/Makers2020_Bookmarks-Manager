require 'pg'
require 'bookmark'

describe 'Bookmark' do

  context '#all' do
    it 'returns a list of all stored bookmarks' do
      conn = PG.connect( dbname: 'bookmark_manager_test')
      conn.exec("INSERT INTO bookmarks (id, url) VALUES (1, 'http://www.makersacademy.com');")
      bookmark = Bookmark.all
      expect(bookmark).to include("http://www.makersacademy.com")
    end
  end

  context '#create' do
    it 'adds a url to the database' do
      bookmark = Bookmark.new
      allow(bookmark).to receive(:create).and_return('http://www.makersacademy.com')
      expect(bookmark.create('http://www.makersacademy.com')).to eq('http://www.makersacademy.com')
    end
  end
end 