require "bookmarks"

describe Bookmarks do

  it "should have some bookmarks" do
    expect(Bookmarks.all).to include("www.google.com")
    expect(Bookmarks.all).to include("www.reddit.com")
    expect(Bookmarks.all).to include("www.twitter.com")
  end

end
