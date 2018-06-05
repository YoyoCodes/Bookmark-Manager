require "bookmarks"

describe Bookmarks do
  describe ".all" do
    it "returns the bookmarks in the array" do
      #connection = PG.connect(dbname: 'bookmark_manager_test')
      #add the test data
      Bookmarks.create(url: "http://makersacademy.com")
      Bookmarks.create(url: "http://destroyallsoftware.com")
      Bookmarks.create(url: "http://google.com")

      expected_bookmarks = [
        'http://makersacademy.com',
        'http://destroyallsoftware.com',
        'http://google.com'
      ]

      expect(Bookmarks.all).to eq expected_bookmarks
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmarks.create(url: 'http://www.testbookmark.com')

      expect(Bookmarks.all).to include 'http://www.testbookmark.com'
    end
  end
end
