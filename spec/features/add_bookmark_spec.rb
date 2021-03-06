require 'pg'

feature "Adding bookmarks"do
  scenario 'A user can add a new bookmark'do
    visit('/bookmarks/new')
    fill_in :link, with: 'http://capybaraisfriendshaped.com'
    click_on 'Submit'

    expect(page).to have_content 'http://capybaraisfriendshaped.com'
  end

  scenario 'A user gets an error message if he introduces an invalid url'do
    visit('/bookmarks/new')
    fill_in :link, with: 'disable_monkey_patching'
    click_on 'Submit'
    
    expect(page).not_to have_content 'disable_monkey_patching'
    expect(page).to have_content "You must submit a valid URL."
  end
end
