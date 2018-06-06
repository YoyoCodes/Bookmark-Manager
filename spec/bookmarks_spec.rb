require "bookmarks"

describe Bookmarks do
  describe ".all" do
    it "returns the bookmarks in the array" do
      #connection = PG.connect(dbname: 'bookmark_manager_test')
      #add the test data
      Bookmarks.create("http://makersacademy.com")
      Bookmarks.create("http://destroyallsoftware.com")
      Bookmarks.create("http://google.com")

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
      Bookmarks.create('http://www.testbookmark.com')

      expect(Bookmarks.all).to include 'http://www.testbookmark.com'
    end

    it "does not create a new bookmark id the URL is not valid"do
      Bookmarks.create('not a real bookmark')

      expect(Bookmarks.all).not_to include 'not a real bookmark'
    end
  end
end
