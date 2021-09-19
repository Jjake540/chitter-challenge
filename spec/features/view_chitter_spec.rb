require 'pg'

feature 'viewing chitter' do
  feature 'visiting the homepage' do
    scenario 'the page title is visible' do
      visit '/'
      expect(page).to have_content 'Welcome to Chitter'
    end
  end
end

feature 'Viewing peeps' do
  scenario 'A user can see peeps' do
    connection = PG.connect(dbname: 'chitter_test')

    connection.exec("INSERT INTO chitter VALUES(1, 'My first peep');")
    connection.exec("INSERT INTO chitter VALUES(2, 'My second peep');")

    visit('/peeps')

    expect(page).to have_content "My first peep"
    expect(page).to have_content "My second peep"
  end
end