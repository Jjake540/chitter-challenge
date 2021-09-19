feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit('/peeps/new')
    fill_in('text', with: 'Test')
    click_button('Submit')

    expect(page).to have_content 'Test'
  end
end