require 'pg'
require 'bookmark'

describe 'Bookmark' do
 
  before(:each) do
    @conn = PG.connect( dbname: 'bookmark_manager_test')
  end

  context '#all' do
    it 'returns a list of all stored bookmarks' do
      @conn.exec("INSERT INTO bookmarks (title, url) VALUES ('Makers Academy', 'http://www.makersacademy.com');")
      bookmark = Bookmark.all
      expect(bookmark).to include("Makers Academy")
    end
  end

  context '#create' do
    it 'adds a url to the database' do
      Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark').first
      expect(Bookmark.all).to include 'Test Bookmark'
    end
  end
end 