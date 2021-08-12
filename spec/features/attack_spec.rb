feature 'attack confirmation' do
  
  scenario 'reveive confirmation after attack' do
    visit('/attack')
    find("//form/button[id='attack']").click
    # click_button 'Attack'
    expect(page)
  end
end