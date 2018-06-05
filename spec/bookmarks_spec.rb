require "bookmarks"

describe Bookmarks do
  describe ".all" do
    it "returns the bookmarks in the array" do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      #add the test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://goolge.com');")

      expected_bookmarks = [
        'http://makersacademy.com',
        'http://destroyallsoftware.com',
        'http://goolge.com'
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
