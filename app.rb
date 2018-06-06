require "sinatra/base"
require 'sinatra/flash'
require 'uri'
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
    p flash[:invalid_notice] = "You must submit a valid URL." unless Bookmarks.create(params[:'link'])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
