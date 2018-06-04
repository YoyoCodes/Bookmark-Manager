require "sinatra/base"

class BookmarkManager < Sinatra::Base
  get "/" do
    "Hello World!"
  end

  get "/bookmarks" do
    "www.google.com www.reddit.com www.twitter.com"
  end

  run! if app_file == $0
end
