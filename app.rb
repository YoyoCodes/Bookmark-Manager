require "sinatra/base"
require 'sinatra/flash'
require_relative "./lib/bookmarks"

class BookmarkManager < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

  get "/" do
    "Hello World!"
  end

  get "/bookmarks" do
    @bookmarks = Bookmarks.all
    erb :index
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks' do
    if params['url'] =~ /\A#{URI::regexp(['http', 'https'])}\z/
      Bookmarks.create(url: params['url'])
    else
       flash[:notice] = "You must submit a valid URL."
    end
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
