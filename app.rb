require "sinatra/base"
require_relative "./lib/bookmarks"

class BookmarkManager < Sinatra::Base
  get "/" do
    "Hello World!"
  end

  get "/bookmarks" do
    @bookmarks = Bookmarks.all
    erb :index
  end

  run! if app_file == $0
end
