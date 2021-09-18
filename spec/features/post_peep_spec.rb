feature 'post a peep' do
  scenario 'post my first peep' do
    visit('/peeps/new')
    fill_in 'peep', with: 'My first peep!'
    click_button 'Post peep'

    expect(page).to have_content('My first peep!')
  end
end