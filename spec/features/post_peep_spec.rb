feature 'post a peep' do
  scenario 'post my first peep' do
    visit('/peeps')

    expect(page).to have_content('My first peep')
    expect(page).to have_content('My second peep')
  end
end