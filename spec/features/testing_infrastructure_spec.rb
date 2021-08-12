feature 'Testing Infrastructure' do

  scenario 'Can run app and checks for content' do
    visit('/') #visiting the root page
    expect(find("//form")).not_to be(nil)
    #expect(page).to have_content 'Testing infrastructure working!'
  end

end