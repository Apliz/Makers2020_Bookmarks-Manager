feature 'Bookmarking' do
  

  before(:each) do
    visit('/home')
  end

  scenario 'retreives set array from Bookmark class' do
    conn = PG.connect( dbname: 'bookmark_manager_test')
    conn.exec("INSERT INTO bookmarks (id, title, url) VALUES (1, 'Makers Academy', 'http://www.makersacademy.com');")
    click_button('retrieve')
    expect(page).to have_content('http://www.makersacademy.com')
  end

  scenario 'can add a given URL by form to the Db' do
    fill_in 'url', with: 'http://www.makersacademy.com'
    fill_in 'title', with: 'Makers Academy'
    click_button('Add')
    expect(page).to have_content('http://www.makersacademy.com')
    expect(page).to have_content('Makers Academy')
  end
end