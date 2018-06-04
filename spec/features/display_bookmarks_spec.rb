feature 'display bookmarks' do
  scenario 'shows one link' do
    visit('/bookmarks')
    expect(page).to have_content "www.google.com"
    expect(page).to have_content "www.reddit.com"
    expect(page).to have_content "www.twitter.com"
  end
end
