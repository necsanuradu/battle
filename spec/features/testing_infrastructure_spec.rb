feature 'Testing Infrastructure' do

  # scenario 'Can run app and checks for content' do
  #   visit('/') #visiting the root page
  #   expect(page).to have_content 'Testing infrastructure working!'

  # end

  scenario "we have a form with an input" do
    visit('/')
    expect(find('//form/input')).not_to be(nil)
    expect(find("//form/input[@id='name_id']")).not_to be(nil)
  end
end