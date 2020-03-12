

require 'sinatra/base'
require './lib/bookmark'

# BookmarkManager is the top-level class in this file
class BookmarkManager < Sinatra::Base

  enable :sessions

  get '/home' do
    erb(:home)
  end

  get '/bookmarks' do
    @bookmark = Bookmark.all
    erb(:bookmarks)
  end

  post '/bookmarks/rdr' do
    session[:url] = params[:url]
    session[:title] = params[:title]
    redirect '/bookmarks/new'
  end

  get '/bookmarks/new' do
    @url = session[:url]
    @title = session[:title]
    Bookmark.create(url: @url, title: @title)
    erb(:bookmarks_add)
  end

  get '/bookmarks/url' do
    @url = session[:url]
    erb(:bookmarks_url)
  end



  run! if app_file == $PROGRAM_NAME
end
