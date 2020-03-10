require 'bookmark'

describe 'Bookmark' do
  describe '.all' do
    it 'returns a list of all stored bookmarks' do
      bookmark = Bookmark.all
      expect(bookmark).to include("http://www.makersacademy.com")
    end
  end
end