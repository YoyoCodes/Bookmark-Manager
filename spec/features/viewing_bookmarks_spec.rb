require 'pg'

feature 'Viewing bookmarks'do
  scenario 'A user can see bookmarks'do
    #connection = PG.connect(dbname: 'bookmark_manager_test')
    #Add the test data
    Bookmarks.create(url: "http://makersacademy.com")
    Bookmarks.create(url: "http://destroyallsoftware.com")
    Bookmarks.create(url: "http://google.com")

    visit('/bookmarks')

    expect(page).to have_content 'http://makersacademy.com'
    expect(page).to have_content 'http://destroyallsoftware.com'
    expect(page).to have_content 'http://google.com'
  end
end
