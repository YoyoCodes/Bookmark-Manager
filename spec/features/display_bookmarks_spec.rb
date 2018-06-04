feature 'display bookmarks' do
  scenario 'shows one link' do
    visit('/bookmarks')
    expect(page).to have_content "http://google.com"
    expect(page).to have_content "http://askjeeves.com"
    expect(page).to have_content "http://twitter.com"
  end
end
