feature 'viewing chitter' do

  feature 'visiting the homepage' do
    scenario 'the page title is visible' do
      visit '/'
      expect(page).to have_content 'Welcome to Chitter (Twitter plz dont sue)'
    end
  end

end