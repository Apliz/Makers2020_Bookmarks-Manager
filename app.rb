

require 'sinatra/base'
require './lib/bookmark'

# BookmarkManager is the top-level class in this file
class BookmarkManager < Sinatra::Base
  get '/home' do
    erb(:home)
  end

  get '/bookmarks' do
    @bookmark = Bookmark.all
    erb(:bookmarks)
  end

  run! if app_file == $PROGRAM_NAME
end
