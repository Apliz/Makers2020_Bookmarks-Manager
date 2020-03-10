feature 'Bookmarking' do
  # Take me to /bookmark (Rdr)
  scenario 'retreives set array from Bookmark class' do
    visit('/home')
    click_button('retrieve')
    expect(page).to have_content("http://www.makersacademy.com")
  end
end