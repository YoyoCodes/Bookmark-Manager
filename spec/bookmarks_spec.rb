require "bookmarks"

describe Bookmarks do

  it "should have some bookmarks" do 
    expect(Bookmarks.all).to include("www.google.com")
  end

end