require 'pg'

feature "Adding bookmarks"do
  scenario 'A user can add a new bookmark'do
    visit('/bookmarks/new')
    fill_in 'url', with: 'http://capybaraisfriendshaped.com'
    click_on 'Submit'
    expect(page).to have_content 'http://capybaraisfriendshaped.com'
  end
end
