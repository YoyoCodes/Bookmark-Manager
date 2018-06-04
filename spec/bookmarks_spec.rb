require "bookmarks"

describe Bookmarks do

  it "should have some bookmarks" do
    expect(Bookmarks.all).to include("http://google.com")
    expect(Bookmarks.all).to include("http://askjeeves.com")
    expect(Bookmarks.all).to include("http://twitter.com")
  end

end
